#ifndef RBDMCURENESAS_H
#define RBDMCURENESAS_H

#include <Arduino.h>

class RBDmcuRenesas {
  private:
    int zeroCrossPin;  // Pin per Zero-Cross Detection
    int dimmerPin;     // Pin per il controllo del dimmer
    int dimmingLevel;  // Livello di dimming (0-255)
    int delayTime;     // Tempo di ritardo calcolato in µs

  public:
    // Costruttore
    RBDmcuRenesas(int zeroCrossPin, int dimmerPin);

    // Inizializzazione dei pin e interrupt
    void begin();

    // Imposta il livello di dimming (0-255)
    void setDimmingLevel(int level);

    // Gestisce il segnale di dimming (da chiamare nel loop principale)
    void handleDimmer();
};

#endif
