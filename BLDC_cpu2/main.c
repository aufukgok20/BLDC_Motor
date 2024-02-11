//
// Included Files
//
#include "driverlib.h"
#include "device.h"
#include "inc/hw_ipc.h"
#include "board.h"

//Define
//SYSCONFIG CPU1 PIN AYARLANDI
#define CPU2_LED 31

//
// Globals
//

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
    // Initialize SysConfig Settings
    //
    Board_init();

    //
    // Wait until shared RAM is available.
    //
    while((HWREGH(MEMCFG_BASE + MEMCFG_O_GSXMSEL) &
           (MEMCFG_GSXMSEL_MSEL_GS14 | MEMCFG_GSXMSEL_MSEL_GS15)) == 0U)
    {
    }

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

    IPC_setFlagLtoR(IPC_CPU2_L_CPU1_R,IPC_FLAG31);

    //
    // Loop indefinitely
    //
    while(1)
    {
        GPIO_togglePin(CPU2_LED);   // CPU2_LED Defined in Sysconfig
        DEVICE_DELAY_US(200000);
    }
}
