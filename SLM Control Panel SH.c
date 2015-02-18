//==============================================================================
//
// Title:       SLM Controller Shack-Hartmann Aberration Correction
// Purpose:     Control Panel routines for correcting aberrations using Shack-Hartmann
//
// Created on:  09-12-2012 by Rick.
// Copyright:   Technische Universiteit Eindhoven. All Rights Reserved.
//
//==============================================================================


//==============================================================================
// Include files

#include <formatio.h>
#include <ansi_c.h>
#include <cvirte.h>     
#include <userint.h>
#include "SLM Control Panel.h"
#include "SLM Control Panel Internal.h"
#include "toolbox.h"
#include "SLM.h"
#include "SLM_internal.h"
#include "SLM Camera Panel.h"
#include "SLM_Zernike.h"



int CVICALLBACK ShackHartmann_Callback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
	{
		case EVENT_COMMIT:
			
			// read out the input parameters in um
			double spotx, spoty, spotdiameter, strayx, strayy;
			GetCtrlVal(panel, TABPANE_13_SHSpotSize, &spotdiameter);
			GetCtrlVal(panel, TABPANE_13_SHSpotX,    &spotx);
			GetCtrlVal(panel, TABPANE_13_SHSpotY,    &spoty);
			GetCtrlVal(panel, TABPANE_13_SHStrayX,   &strayx);
			GetCtrlVal(panel, TABPANE_13_SHStrayY,   &strayy);
			
			// convert to meter
			spotx *= 1.0e-6;
			spoty *= 1.0e-6;
			spotdiameter *= 1.0e-6;
			strayx *= 1.0e-6;
			strayy *= 1.0e-6;
			
			// set the Shack-Hartmann pattern
			SLM_SetShackHartmannPattern(spotx, spoty, spotdiameter, strayx, strayy);
			
			// check if we need to update
			if (eventData1 != SLM_NO_UPDATE)
			{
				// update the SLM panel and the simulation Panel (if toggled)
				SLM_update(pnlSLMpixels, SLMpixels_SLMcanvas, pnlSimPanel, SimPanel_CANVAS, 1);
			}

			break;
	}
	return 0;
}


// Calibrate the Phase aberration using the spot projector
int CVICALLBACK CalibratePhaseAberr_Callback (int panel, int control, int event,
		void *callbackData, int eventData1, int eventData2)
{
	switch (event)
	{
		case EVENT_COMMIT:
		{
			// get the number of spots and their spacing
			unsigned int Nx, Ny;
			double xspacing, yspacing, randomampl, spotlens;
			GetCtrlVal(TabPage_1_0, TABPANEL_3_inputNx, &Nx);
			GetCtrlVal(TabPage_1_0, TABPANEL_3_inputNy, &Ny);
			GetCtrlVal(TabPage_1_0, TABPANEL_3_Xspacing, &xspacing);
			GetCtrlVal(TabPage_1_0, TABPANEL_3_Yspacing, &yspacing);
			
			
			// get the signal area from the camera
			
			
			// get the number of Zernike polynomials we need for fitting
			
			
			break;
		}
	}
	return 0;
}
