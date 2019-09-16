#include <Wire.h> 
#include <LiquidCrystal_I2C.h>
// The menu wrapper library
#include <LiquidMenu.h>

LiquidCrystal_I2C lcd(0x27,16,2);

/*
 * Variables used for periodic execution of code. The first one is the period
 * in milliseconds and the second one is the last time the code executed.
 */

//Init Variabel
int jarak = 0;
int djarak = 0;
int jumlahDropbiji = 0;
int jarakAntarTick = 1; // satuan cm
int jarakAntarBiji = 4; // satuan cm
int setup_var = 2;

/*
 * LiquidLine objects represent a single line of text and/or variables
 * on the display. The first two parameters are the column and row from
 * which the line starts, the rest of the parameters are the text and/or
 * variables that will be printed on the display. They can be up to four.
 */
// Here the line is set to column 1, row 0 and will print the passed
// string and the passed variable.
LiquidLine Running_line1(1, 0, "Jarak :", jarak);
// Here the column is 3, the row is 1 and the string is "Hello Menu".
LiquidLine Running_line2(1, 1, "Drop :", jumlahDropbiji);

/*
 * LiquidScreen objects represent a single screen. A screen is made of
 * one or more LiquidLine objects. Up to four LiquidLine objects can
 * be inserted from here, but more can be added later in setup() using
 * welcome_screen.add_line(someLine_object);.
 */
// Here the LiquidLine objects are the two objects from above.
LiquidScreen Running_screen(Running_line1, Running_line2);

// Here there is not only a text string but also a changing integer variable.
LiquidLine JarakAntarTick_line(0, 0, "Tick: ", jarakAntarTick);
LiquidScreen Setup_screen(JarakAntarTick_line);

// Here there is not only a text string but also a changing integer variable.
LiquidLine JarakAntarBiji_line(0, 0, "Biji: ", jarakAntarBiji);
LiquidScreen Setup_Second_screen(JarakAntarBiji_line);

/*
 * The LiquidMenu object combines the LiquidScreen objects to form the
 * menu. Here it is only instantiated and the screens are added later
 * using menu.add_screen(someScreen_object);. This object is used to
 * control the menu, for example: menu.next_screen(), menu.switch_focus()...
 */
LiquidMenu menu(lcd);

// PIN Define
#define EncoderTickPin 2
#define EncoderDirPin 8
#define EncoderDir -1
#define PositionTrig 10

#define Dashboard_Button1 11
#define Dashboard_Button2 12
#define Dashboard_Button3 A0

#define Reset_Button Dashboard_Button3
#define Setup_Button Dashboard_Button1

#define Select_Button Dashboard_Button1
#define Up_Button Dashboard_Button2
#define Down_Button Dashboard_Button3

#define Motor_PWM 9


// STATE of GOWIN
enum Gowin_State{
  init_gowin,
  running_gowin,
  setup_gowin
  };

Gowin_State state_now = init_gowin;



void setup() {
  // initialize digital pin LED_BUILTIN as an output.
//  pinMode(LED_BUILTIN, OUTPUT);

  //INITIALIZATION
  pinMode(EncoderTickPin, INPUT);
  pinMode(EncoderDirPin, INPUT);
  pinMode(PositionTrig, INPUT);
  pinMode(Dashboard_Button1, INPUT_PULLUP);
  pinMode(Dashboard_Button2, INPUT_PULLUP);
  pinMode(Dashboard_Button3, INPUT_PULLUP);
  pinMode(Motor_PWM, OUTPUT);

  lcd.init();                      // initialize the lcd 
  lcd.init();
  // Print a message to the LCD.
  lcd.backlight();
  lcd.setCursor(0,0);
  lcd.print("Gowin");

  attachInterrupt(digitalPinToInterrupt(EncoderTickPin),encoderTick,RISING);
  Serial.begin(9600);

  // Menu initialization.
  menu.init();

  // This is the method used to add a screen object to the menu.
  menu.add_screen(Running_screen);
  menu.add_screen(Setup_screen);
  menu.add_screen(Setup_Second_screen);
  
  
}

// the loop function runs over and over again forever
void loop() {
  switch(state_now){
    case init_gowin:
      init_state();
      state_now = running_gowin;
      menu.change_screen(1);
      break;
    case running_gowin:
      running_state();
      if(digitalRead(Setup_Button) == 0){
        state_now = setup_gowin;
        setup_var = 2;
        menu.change_screen(2);
        delay(500);
      }      
      Serial.println("Running");
      break;
    case setup_gowin:
      setup_state();
      if((digitalRead(Up_Button) == 0) && (digitalRead(Down_Button) == 0)){
        state_now = running_gowin;
        menu.change_screen(1);
        delay(500);
      }      
      break;
  }
}

void init_state(){
  Serial.println("INIT State");
  delay(1000);
}

void running_state(){
  delay(100);
  menu.update();
  if(digitalRead(Reset_Button) == 0){
    jarak = 0;
    jumlahDropbiji = 0;
    Serial.println("RESET");
  }

  
  if(((jarak % jarakAntarBiji) == 0 ) && (djarak > 0) && (jarak != 0)){
    // DropBiji
    ///Jalankan Motor
    analogWrite(Motor_PWM,255);
    delay(100);
    while(digitalRead(PositionTrig) == 0){
      Serial.println("MotorBerputar");   
    }
    analogWrite(Motor_PWM,0);
    jumlahDropbiji = jumlahDropbiji + 1;
  }

  
  
  Serial.print("Jarak : ");Serial.print(jarak);
  Serial.print(" DropBiji : ");Serial.println(jumlahDropbiji);
//  delay(100);
}

void setup_state(){
  delay(100);
  menu.update();
  if(digitalRead(Select_Button) == 0){
    
    switch(setup_var){
      case 2:
        menu.change_screen(3);
        setup_var = 3;
        break;
      case 3:
        menu.change_screen(2);
        setup_var = 2;
        break;
    }
  }
  switch(setup_var){
      case 2:
        if(digitalRead(Up_Button) == 0){
          jarakAntarTick = jarakAntarTick + 1;
          delay(100);
        }else if(digitalRead(Down_Button) == 0){
          jarakAntarTick = jarakAntarTick - 1;
        }
        Serial.println("SET JARAK");
        break;
      case 3:
        if(digitalRead(Up_Button) == 0){
          jarakAntarBiji = jarakAntarBiji + 1;
        }else if(digitalRead(Down_Button) == 0){
          jarakAntarBiji = jarakAntarBiji - 1;
        }
        Serial.println("SET BIJI");
        break;
    }
  
//  Serial.println("SETUP");
}
void encoderTick(){
  if(digitalRead(EncoderDirPin)){
    djarak = (jarak + (EncoderDir*jarakAntarTick)) - jarak;
    jarak = jarak + (EncoderDir*jarakAntarTick);   
  }else{
    djarak = (jarak - (EncoderDir*jarakAntarTick)) - jarak;
    jarak = jarak - (EncoderDir*jarakAntarTick);
    
    }  
  if(djarak > 0){
    Serial.println("maju");  
  }else{
    Serial.println("mundur");
  }
}
