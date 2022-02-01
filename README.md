# india-bridge

India bridge is a collection of Stata ado programs and datasets tracking district changes in India as between 1951-2011.

All state and district codes are in sync with the administrative atlas (inside the docs folder in this repo).

## Directory structure

	- /ado contains `indiabridge.ado`, a Stata program that assigns district & state level identification given a Census year.
	- /data contains a bridge/crosswalk Stata .dta, and an Excel file that can be used to track these changes.
	- /docs contains relevant references and documentation used to build india-bridge.
	- /releases contains compressed archives of the Stata programs, which can be downloaded and placed in the user's ado directory.

## Usage
	Download the zip from the releases section and extract it to your Stata ado directory.
	On Windows, this will be found under `C:\ado\personal`.
	On Mac/Linux, this directory is under `~/ado/personal`

	Running `help indiabridge` in Stata will pop-up a dialog with syntax and examples for use.

Last updated: Feb 01, 2022
