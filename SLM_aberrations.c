//==============================================================================
//
// Title:       Aberration Correction
// Purpose:     Algorithms for performing aberration correction
//
// Created on:  14-11-2012 by Rick van Bijnen
// Copyright:   Technische Universiteit Eindhoven. All Rights Reserved.
//
//==============================================================================

#include "toolbox.h"
#include <userint.h>
#include <ansi_c.h>
#include "SLM_genetic.h" 
#include "SLM_internal.h"
#include "SLM_Zernike.h"
#include "SLM Camera Panel.h"


/// HIFN sets a pattern used for Shack-Hartmann aberration correction
void SLM_SetShackHartmannPattern(double spotx, double spoty, double spotdiameter, double strayx, double strayy)
{
	// loop over all the pixels of the SLM
	for (int k = 0; k < gXsize; k++)
	for (int l = 0; l < gYsize; l++)
	{
		// compute the current (x, y) coordinate on the SLM	in meter
		double xum = (-0.5 + (k) / ((double) gXsize - 1)) * LxSLM;
		double yum = (-0.5 + (l) / ((double) gYsize - 1)) * LySLM;
		
		// is this pixel part of the spot?
		double dx = xum - spotx;
		double dy = yum - spoty;
		if ((dx * dx + dy * dy) < (spotdiameter * spotdiameter) / 4.0)
		{
			// yes, part of the spot
			gSLMphase[k + l * gXsize] = 0;
		}
		else
		{
			// no, not part of the spot, but part of the stray light Switched 2 Pi for 256
			gSLMphase[k + l * gXsize] = (double) (2 * PI * (((double) k) / ((double) gXsize - 1)) * (strayx / gFocalUnitX)) 
									  + (2 * PI * (((double) l) / ((double) gYsize - 1)) * (strayy / gFocalUnitY));
		}
		
	}
	
	// set the current pattern indicator
	gCurrentPattern = SLM_SHACKHARTMANN;
}



/*
/// HIFN compute the position (xout, yout) in the focal plane where the light ends up that is incident on
/// (xin, yin) in the SLM plane, given a certain set of aberrations
void calcSpotPos(double* CZ, int NZ, double xin, double yin, double &xout, double &yout)
{
	// get the phase gradient at the point (xin, yin)
	double gradx = 0.0;
	double grady = 0.0;
	for (int j = 1; j <= NZ; j++)
	{
		// temp variables for holding the gradient due to the current Zernike polynomial
		double tmpgradx, tmpgrady;
		
		// get a function pointer to the j-th Zernike rectangle polynomial
		vFddpp grzj = GradRectZernikePolynomial(j);
		
		// get the gradient
		grzj(xin, yin, tmpgradx, tmpgrady);
		
		// add to the total gradient
		gradx += CZ[j - 1] * tmpgradx;
		grady += CZ[j - 1] * tmpgrady;
	}
	
	// from the phase gradient we can compute the point where the spot will end up
}


/// HIFN Perform a least squares minimization of the distance between the expected and measured spots, 
/// as a function of the coefficients of Zernike polynomials
double* fitZernikePolynomials(int NZ, double* xpos, double* ypos, double* xmeasured, double* ymeasured, int Npoints)
{
	
}	 */
