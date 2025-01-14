#include "RBDdimmer.h"

// Dichiarazioni delle variabili globali
dimmerLamp* dimmers[ALL_DIMMERS] = {NULL};
volatile int zeroCross = 0;

// Costruttore per piattaforme che richiedono il pin di zero-crossing
#if !(defined(ARDUINO_ARCH_AVR) || defined(ARDUINO_ARCH_SAMD))
dimmerLamp::dimmerLamp(int user_dimmer_pin, int zc_dimmer_pin) {
    this->dimmer_pin = user_dimmer_pin;
    this->zc_pin = zc_dimmer_pin;
}
#else
// Costruttore per piattaforme AVR e SAMD
dimmerLamp::dimmerLamp(int user_dimmer_pin) {
    this->dimmer_pin = user_dimmer_pin;
}
#endif

void dimmerLamp::begin(DIMMER_MODE_typedef DIMMER_MODE, ON_OFF_typedef ON_OFF) {
    this->toggle_state = OFF;
    this->tog_current = 0;
    this->pulse_begin = 0;
    this->tog_max = 100;
    this->tog_min = 0;
    
    dimmers[this->dimmer_pin] = this;
    pinMode(this->dimmer_pin, OUTPUT);
    digitalWrite(this->dimmer_pin, LOW);
    
    port_init();
    timer_init();
    ext_int_init();
    setState(ON_OFF);
    setMode(DIMMER_MODE);
}

void dimmerLamp::setPower(int power) {
    if (power >= 100) power = 100;
    if (power <= 0) power = 0;
    this->pulse_begin = map(power, 0, 100, 0, 75); // Adatta la mappatura al sistema specifico
}

int dimmerLamp::getPower() {
    return map(this->pulse_begin, 0, 75, 0, 100);
}

void dimmerLamp::setState(ON_OFF_typedef ON_OFF) {
    this->toggle_state = (ON_OFF == ON) ? true : false;
}

bool dimmerLamp::getState() {
    return this->toggle_state;
}

void dimmerLamp::changeState() {
    this->toggle_state = !this->toggle_state;
}

void dimmerLamp::setMode(DIMMER_MODE_typedef DIMMER_MODE) {
    // Configura la modalità di funzionamento
}

DIMMER_MODE_typedef dimmerLamp::getMode() {
    return NORMAL_MODE; // Adatta per supportare altre modalità
}

void dimmerLamp::toggleSettings(int minValue, int maxValue) {
    this->tog_min = minValue;
    this->tog_max = maxValue;
}

// Funzioni specifiche per il controllo del timer e del port
void dimmerLamp::port_init() {
    pinMode(this->dimmer_pin, OUTPUT);
}

void dimmerLamp::timer_init() {
    // Configura il timer per il controllo del dimmer
}

void dimmerLamp::ext_int_init() {
    // Configura l'interrupt esterno per zero-crossing
}
