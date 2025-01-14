#include "RBDmcuRenesas.h"

// Variabile volatile per il rilevamento del passaggio per lo zero
volatile bool zeroCrossDetected = false;

// Interrupt per il passaggio per lo zero
void zeroCrossISR() {
    zeroCrossDetected = true; // Imposta il flag quando viene rilevato il passaggio per lo zero
}

// Costruttore
RBDmcuRenesas::RBDmcuRenesas(int zeroCrossPin, int dimmerPin) {
    this->zeroCrossPin = zeroCrossPin;
    this->dimmerPin = dimmerPin;
}

// Inizializza i pin e l'interrupt
void RBDmcuRenesas::begin() {
    pinMode(zeroCrossPin, INPUT_PULLUP); // Configura il pin Zero-Cross come input
    pinMode(dimmerPin, OUTPUT);          // Configura il pin DIMMER come output
    attachInterrupt(digitalPinToInterrupt(zeroCrossPin), zeroCrossISR, FALLING);
}

// Imposta il livello di dimming
void RBDmcuRenesas::setDimmingLevel(int level) {
    // Converte il livello di dimming in un ritardo appropriato
    this->dimmingLevel = constrain(level, 0, 255);
    this->delayTime = map(dimmingLevel, 0, 255, 9000, 100); // Da 9ms (spento) a 0.1ms (massima luminosità)
}

// Gestisce il controllo del dimmer
void RBDmcuRenesas::handleDimmer() {
    if (zeroCrossDetected) {
        zeroCrossDetected = false; // Resetta il flag

        // Applica il ritardo calcolato
        delayMicroseconds(this->delayTime);

        // Genera l'impulso per il TRIAC
        digitalWrite(dimmerPin, HIGH);
        delayMicroseconds(50); // Durata dell'impulso
        digitalWrite(dimmerPin, LOW);
    }
}
