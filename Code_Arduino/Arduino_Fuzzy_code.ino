#include <Fuzzy.h>
#include <stdlib.h>
int Presure_In;
float pres;
float error_val=0;
float d_error_val=0;

int digPin = 10; // pin digital 10 PWM
int PWM_Val=0;

// Fuzzy
Fuzzy *fuzzy = new Fuzzy();

// FuzzyInput <error>
  FuzzySet *ok = new FuzzySet(-10, 0, 0, 10);
FuzzySet *alto_neg = new FuzzySet(-300, -300, -250, -50);
FuzzySet *medio_neg = new FuzzySet(-100, -50, -50, 0);
FuzzySet *medio_pos = new FuzzySet(0, 50, 50, 100);
FuzzySet *alto_pos = new FuzzySet(50, 250, 300, 300);


// FuzzyInput <d_error>
FuzzySet *d_neg = new FuzzySet(-1, -1, -0.8, 0);
FuzzySet *d_ok = new FuzzySet(-0.3, 0, 0, 0.3);
FuzzySet *d_pos = new FuzzySet(0, 0.8, 1, 1);


// FuzzyOutput <pwm_out>
FuzzySet *pwm_zero = new FuzzySet(0, 0, 0, 40);
FuzzySet *pwm_bajo = new FuzzySet(20, 60, 60, 100);
FuzzySet *pwm_medio = new FuzzySet(80, 120, 120, 160);
FuzzySet *pwm_alto = new FuzzySet(140, 200, 255, 255);

void setup()
{
  // Set the Serial output
  Serial.begin(9600);
  // Set a random seed
  randomSeed(analogRead(0));

  // FuzzyInput <error>
  FuzzyInput *error = new FuzzyInput(1);

  error->addFuzzySet(ok);
  error->addFuzzySet(alto_neg);
  error->addFuzzySet(medio_neg);
  error->addFuzzySet(medio_pos);
  error->addFuzzySet(alto_pos);
  fuzzy->addFuzzyInput(error);

  // FuzzyInput <d_error>
  FuzzyInput *d_error = new FuzzyInput(2);

  d_error->addFuzzySet(d_neg);
  d_error->addFuzzySet(d_ok);
  d_error->addFuzzySet(d_pos);
  fuzzy->addFuzzyInput(d_error);


  // FuzzyOutput <pwm_out>
  FuzzyOutput *pwm_out = new FuzzyOutput(1);

  pwm_out->addFuzzySet(pwm_zero);
  pwm_out->addFuzzySet(pwm_bajo);
  pwm_out->addFuzzySet(pwm_medio);
  pwm_out->addFuzzySet(pwm_alto);
  fuzzy->addFuzzyOutput(pwm_out);

  // Building FuzzyRule
//-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_ok_and_d_error_ok = new FuzzyRuleAntecedent();
  if_error_ok_and_d_error_ok->joinWithAND(ok, d_ok);

  FuzzyRuleConsequent *then_pwm_bajo = new FuzzyRuleConsequent();
  then_pwm_bajo->addOutput(pwm_bajo);

   FuzzyRuleConsequent *then_pwm_medio = new FuzzyRuleConsequent();
  then_pwm_medio->addOutput(pwm_medio);

  FuzzyRuleConsequent *then_pwm_zero = new FuzzyRuleConsequent();
  then_pwm_zero->addOutput(pwm_zero);

  FuzzyRule *fuzzyRule1 = new FuzzyRule(1, if_error_ok_and_d_error_ok, then_pwm_zero);
  fuzzy->addFuzzyRule(fuzzyRule1);
//-----------------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_ok_and_d_error_d_pos = new FuzzyRuleAntecedent();
  if_error_ok_and_d_error_d_pos->joinWithAND(ok, d_pos);



  FuzzyRule *fuzzyRule2 = new FuzzyRule(2, if_error_ok_and_d_error_d_pos, then_pwm_zero);
  fuzzy->addFuzzyRule(fuzzyRule2);
//-----------------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_ok_and_d_error_d_neg = new FuzzyRuleAntecedent();
  if_error_ok_and_d_error_d_neg->joinWithAND(ok, d_neg);

 // FuzzyRuleConsequent *then_pwm_bajo = new FuzzyRuleConsequent();
  //then_pwm_bajo->addOutput(pwm_bajo);

  FuzzyRule *fuzzyRule3 = new FuzzyRule(3, if_error_ok_and_d_error_d_neg, then_pwm_zero);
  fuzzy->addFuzzyRule(fuzzyRule3);
//-----------------------------------------------------------------------------------------------------------


  //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_alto_pos_and_d_error_d_ok = new FuzzyRuleAntecedent();
  if_error_alto_pos_and_d_error_d_ok->joinWithAND(alto_pos, d_ok);

  FuzzyRuleConsequent *then_pwm_alto = new FuzzyRuleConsequent();
  then_pwm_alto->addOutput(pwm_alto);

  FuzzyRule *fuzzyRule7 = new FuzzyRule(7, if_error_alto_pos_and_d_error_d_ok, then_pwm_medio);
  fuzzy->addFuzzyRule(fuzzyRule7);
//-----------------------------------------------------------------------------------------------------------

  //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_alto_pos_and_d_error_d_pos = new FuzzyRuleAntecedent();
  if_error_alto_pos_and_d_error_d_pos->joinWithAND(alto_pos, d_pos);

  //FuzzyRuleConsequent *then_pwm_alto = new FuzzyRuleConsequent();
  //then_pwm_alto->addOutput(pwm_alto);

  FuzzyRule *fuzzyRule8 = new FuzzyRule(8, if_error_alto_pos_and_d_error_d_pos, then_pwm_medio);
  fuzzy->addFuzzyRule(fuzzyRule8);
//-----------------------------------------------------------------------------------------------------------

  //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_alto_pos_and_d_error_d_neg = new FuzzyRuleAntecedent();
  if_error_alto_pos_and_d_error_d_neg->joinWithAND(alto_pos, d_neg);

  //FuzzyRuleConsequent *then_pwm_alto = new FuzzyRuleConsequent();
  //then_pwm_alto->addOutput(pwm_alto);

  FuzzyRule *fuzzyRule9 = new FuzzyRule(9, if_error_alto_pos_and_d_error_d_neg, then_pwm_medio);
  fuzzy->addFuzzyRule(fuzzyRule9);
//-----------------------------------------------------------------------------------------------------------







//-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_medio_pos_and_d_error_d_ok = new FuzzyRuleAntecedent();
  if_error_medio_pos_and_d_error_d_ok->joinWithAND(medio_pos, d_ok);

 

  FuzzyRule *fuzzyRule4 = new FuzzyRule(4, if_error_medio_pos_and_d_error_d_ok, then_pwm_medio);
  fuzzy->addFuzzyRule(fuzzyRule4);
//-----------------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_medio_pos_and_d_error_d_pos = new FuzzyRuleAntecedent();
  if_error_medio_pos_and_d_error_d_pos->joinWithAND(medio_pos, d_pos);

 //FuzzyRuleConsequent *then_pwm_medio = new FuzzyRuleConsequent();
  //then_pwm_medio->addOutput(pwm_medio);

  FuzzyRule *fuzzyRule5 = new FuzzyRule(5, if_error_medio_pos_and_d_error_d_pos, then_pwm_medio);
  fuzzy->addFuzzyRule(fuzzyRule5);
//-----------------------------------------------------------------------------------------------------------

  //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_medio_pos_and_d_error_d_neg = new FuzzyRuleAntecedent();
  if_error_medio_pos_and_d_error_d_neg->joinWithAND(medio_pos, d_neg);

 //FuzzyRuleConsequent *then_pwm_medio = new FuzzyRuleConsequent();
  //then_pwm_medio->addOutput(pwm_medio);

  FuzzyRule *fuzzyRule6 = new FuzzyRule(6, if_error_medio_pos_and_d_error_d_neg, then_pwm_zero);
  fuzzy->addFuzzyRule(fuzzyRule6);
//-----------------------------------------------------------------------------------------------------------




    //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_medio_neg_and_d_error_d_ok = new FuzzyRuleAntecedent();
  if_error_medio_neg_and_d_error_d_ok->joinWithAND(medio_neg, d_ok);

  //FuzzyRuleConsequent *then_pwm_alto = new FuzzyRuleConsequent();
  //then_pwm_alto->addOutput(pwm_alto);

  FuzzyRule *fuzzyRule10 = new FuzzyRule(10, if_error_medio_neg_and_d_error_d_ok, then_pwm_zero);
  fuzzy->addFuzzyRule(fuzzyRule10);
//-----------------------------------------------------------------------------------------------------------

    //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_medio_neg_and_d_error_d_pos = new FuzzyRuleAntecedent();
  if_error_medio_neg_and_d_error_d_pos->joinWithAND(medio_neg, d_pos);

  //FuzzyRuleConsequent *then_pwm_alto = new FuzzyRuleConsequent();
  //then_pwm_alto->addOutput(pwm_alto);

  FuzzyRule *fuzzyRule11 = new FuzzyRule(11, if_error_medio_neg_and_d_error_d_pos, then_pwm_zero);
  fuzzy->addFuzzyRule(fuzzyRule11);
//-----------------------------------------------------------------------------------------------------------

   //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_medio_neg_and_d_error_d_neg = new FuzzyRuleAntecedent();
  if_error_medio_neg_and_d_error_d_neg->joinWithAND(medio_neg, d_neg);

  //FuzzyRuleConsequent *then_pwm_alto = new FuzzyRuleConsequent();
  //then_pwm_alto->addOutput(pwm_alto);

  FuzzyRule *fuzzyRule12 = new FuzzyRule(12, if_error_medio_neg_and_d_error_d_neg, then_pwm_bajo);
  fuzzy->addFuzzyRule(fuzzyRule12);
//-----------------------------------------------------------------------------------------------------------




   //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_alto_neg_and_d_error_d_ok = new FuzzyRuleAntecedent();
  if_error_alto_neg_and_d_error_d_ok->joinWithAND(alto_neg, d_ok);

  //FuzzyRuleConsequent *then_pwm_alto = new FuzzyRuleConsequent();
  //then_pwm_alto->addOutput(pwm_alto);

  FuzzyRule *fuzzyRule13 = new FuzzyRule(13, if_error_alto_neg_and_d_error_d_ok, then_pwm_medio);
  fuzzy->addFuzzyRule(fuzzyRule13);
//-----------------------------------------------------------------------------------------------------------

   //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_alto_neg_and_d_error_d_pos = new FuzzyRuleAntecedent();
  if_error_alto_neg_and_d_error_d_pos->joinWithAND(alto_neg, d_pos);

  //FuzzyRuleConsequent *then_pwm_alto = new FuzzyRuleConsequent();
  //then_pwm_alto->addOutput(pwm_alto);

  FuzzyRule *fuzzyRule14 = new FuzzyRule(14, if_error_alto_neg_and_d_error_d_pos, then_pwm_medio);
  fuzzy->addFuzzyRule(fuzzyRule14);
//-----------------------------------------------------------------------------------------------------------

   //-----------------------------------------------------------------------------------------------------------  
  FuzzyRuleAntecedent *if_error_alto_neg_and_d_error_d_neg = new FuzzyRuleAntecedent();
  if_error_alto_neg_and_d_error_d_neg->joinWithAND(alto_neg, d_neg);

  //FuzzyRuleConsequent *then_pwm_alto = new FuzzyRuleConsequent();
  //then_pwm_alto->addOutput(pwm_alto);

  FuzzyRule *fuzzyRule15 = new FuzzyRule(15, if_error_alto_neg_and_d_error_d_neg, then_pwm_medio);
  fuzzy->addFuzzyRule(fuzzyRule15);
//-----------------------------------------------------------------------------------------------------------

}
float d_error_t, pres_ref=0;

void loop()
{
 pres_ref=200:
if (Serial.available())
{
   char startB = Serial.read(); //read input via serial port
  
   if (startB != 0) //wait for call for data from Delphi app
   {
     Presure_In=analogRead(0); 
     pres=(Presure_In*0.05430-2.222)*7.5006375541921;

     error_val = pres_ref - pres;   // Calculando error de Presión

     d_error_t = abs(error_val)-abs(d_error_t)  ;
     d_error_val = d_error_t/300; //  d_error [-1;1]
     

     fuzzy->setInput(1, error_val);
     fuzzy->setInput(2, d_error_val);


     fuzzy->fuzzify();

  
     float output1 = fuzzy->defuzzify(1);
     PWM_Val = (int)output1;
  
     analogWrite(digPin,PWM_Val); // Señal PWM en el PIN 10

     //Serial.print((int)startB);
     if (pres<0)pres=0;
    Serial.println(pres);


    // wait 12 seconds
    //delay(12000);
   }
 }
}
