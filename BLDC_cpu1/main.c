//
// Included Files
//
#include "driverlib.h"
#include "device.h"
#include "inc/hw_ipc.h"
#include "board.h"

//
// Globals
//

// Main
//
void main(void)
{
    //
    // Initialize device clock and peripherals
    //
    Device_init();

    //
    // Initialize GPIO
    //
    Device_initGPIO();

    //
    // Initialize SysConfig Settings
    //
    Board_init();

    Device_bootCPU2(BOOT_MODE_CPU2);

    //
    // Initialize PIE and clear PIE registers. Disables CPU interrupts.
    //
    Interrupt_initModule();

    //
    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    //
    Interrupt_initVectorTable();

    //
    // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
    //
    EINT;
    ERTM;

    while(!IPC_isFlagBusyRtoL(IPC_CPU1_L_CPU2_R,IPC_FLAG31));
    IPC_ackFlagRtoL(IPC_CPU1_L_CPU2_R,IPC_FLAG31);

    //
    // Loop indefinitely
    //
    while(1)
    {
        GPIO_togglePin(CPU1_LED);
        DEVICE_DELAY_US(200000);
    }
}
