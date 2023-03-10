#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c TP_Chenillard.c OscilateurOneSec.c TP_Chenillard_interruption.c btnInit.c TP_Buzzer_PWM.c TP_voltmetre.c librairies_utiles/C_Source_Files/lcd.c temperature.c librairies_utiles/C_Source_Files/i2c.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.p1 ${OBJECTDIR}/TP_Chenillard.p1 ${OBJECTDIR}/OscilateurOneSec.p1 ${OBJECTDIR}/TP_Chenillard_interruption.p1 ${OBJECTDIR}/btnInit.p1 ${OBJECTDIR}/TP_Buzzer_PWM.p1 ${OBJECTDIR}/TP_voltmetre.p1 ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1 ${OBJECTDIR}/temperature.p1 ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/main.p1.d ${OBJECTDIR}/TP_Chenillard.p1.d ${OBJECTDIR}/OscilateurOneSec.p1.d ${OBJECTDIR}/TP_Chenillard_interruption.p1.d ${OBJECTDIR}/btnInit.p1.d ${OBJECTDIR}/TP_Buzzer_PWM.p1.d ${OBJECTDIR}/TP_voltmetre.p1.d ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1.d ${OBJECTDIR}/temperature.p1.d ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.p1 ${OBJECTDIR}/TP_Chenillard.p1 ${OBJECTDIR}/OscilateurOneSec.p1 ${OBJECTDIR}/TP_Chenillard_interruption.p1 ${OBJECTDIR}/btnInit.p1 ${OBJECTDIR}/TP_Buzzer_PWM.p1 ${OBJECTDIR}/TP_voltmetre.p1 ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1 ${OBJECTDIR}/temperature.p1 ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1

# Source Files
SOURCEFILES=main.c TP_Chenillard.c OscilateurOneSec.c TP_Chenillard_interruption.c btnInit.c TP_Buzzer_PWM.c TP_voltmetre.c librairies_utiles/C_Source_Files/lcd.c temperature.c librairies_utiles/C_Source_Files/i2c.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F46K22
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TP_Chenillard.p1: TP_Chenillard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TP_Chenillard.p1.d 
	@${RM} ${OBJECTDIR}/TP_Chenillard.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TP_Chenillard.p1 TP_Chenillard.c 
	@-${MV} ${OBJECTDIR}/TP_Chenillard.d ${OBJECTDIR}/TP_Chenillard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TP_Chenillard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/OscilateurOneSec.p1: OscilateurOneSec.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OscilateurOneSec.p1.d 
	@${RM} ${OBJECTDIR}/OscilateurOneSec.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/OscilateurOneSec.p1 OscilateurOneSec.c 
	@-${MV} ${OBJECTDIR}/OscilateurOneSec.d ${OBJECTDIR}/OscilateurOneSec.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/OscilateurOneSec.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TP_Chenillard_interruption.p1: TP_Chenillard_interruption.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TP_Chenillard_interruption.p1.d 
	@${RM} ${OBJECTDIR}/TP_Chenillard_interruption.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TP_Chenillard_interruption.p1 TP_Chenillard_interruption.c 
	@-${MV} ${OBJECTDIR}/TP_Chenillard_interruption.d ${OBJECTDIR}/TP_Chenillard_interruption.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TP_Chenillard_interruption.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/btnInit.p1: btnInit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/btnInit.p1.d 
	@${RM} ${OBJECTDIR}/btnInit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/btnInit.p1 btnInit.c 
	@-${MV} ${OBJECTDIR}/btnInit.d ${OBJECTDIR}/btnInit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/btnInit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TP_Buzzer_PWM.p1: TP_Buzzer_PWM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TP_Buzzer_PWM.p1.d 
	@${RM} ${OBJECTDIR}/TP_Buzzer_PWM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TP_Buzzer_PWM.p1 TP_Buzzer_PWM.c 
	@-${MV} ${OBJECTDIR}/TP_Buzzer_PWM.d ${OBJECTDIR}/TP_Buzzer_PWM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TP_Buzzer_PWM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TP_voltmetre.p1: TP_voltmetre.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TP_voltmetre.p1.d 
	@${RM} ${OBJECTDIR}/TP_voltmetre.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TP_voltmetre.p1 TP_voltmetre.c 
	@-${MV} ${OBJECTDIR}/TP_voltmetre.d ${OBJECTDIR}/TP_voltmetre.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TP_voltmetre.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1: librairies_utiles/C_Source_Files/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/librairies_utiles/C_Source_Files" 
	@${RM} ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1.d 
	@${RM} ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1 librairies_utiles/C_Source_Files/lcd.c 
	@-${MV} ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.d ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/temperature.p1: temperature.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/temperature.p1.d 
	@${RM} ${OBJECTDIR}/temperature.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/temperature.p1 temperature.c 
	@-${MV} ${OBJECTDIR}/temperature.d ${OBJECTDIR}/temperature.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/temperature.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1: librairies_utiles/C_Source_Files/i2c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/librairies_utiles/C_Source_Files" 
	@${RM} ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1.d 
	@${RM} ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit4   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1 librairies_utiles/C_Source_Files/i2c.c 
	@-${MV} ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.d ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TP_Chenillard.p1: TP_Chenillard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TP_Chenillard.p1.d 
	@${RM} ${OBJECTDIR}/TP_Chenillard.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TP_Chenillard.p1 TP_Chenillard.c 
	@-${MV} ${OBJECTDIR}/TP_Chenillard.d ${OBJECTDIR}/TP_Chenillard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TP_Chenillard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/OscilateurOneSec.p1: OscilateurOneSec.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OscilateurOneSec.p1.d 
	@${RM} ${OBJECTDIR}/OscilateurOneSec.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/OscilateurOneSec.p1 OscilateurOneSec.c 
	@-${MV} ${OBJECTDIR}/OscilateurOneSec.d ${OBJECTDIR}/OscilateurOneSec.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/OscilateurOneSec.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TP_Chenillard_interruption.p1: TP_Chenillard_interruption.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TP_Chenillard_interruption.p1.d 
	@${RM} ${OBJECTDIR}/TP_Chenillard_interruption.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TP_Chenillard_interruption.p1 TP_Chenillard_interruption.c 
	@-${MV} ${OBJECTDIR}/TP_Chenillard_interruption.d ${OBJECTDIR}/TP_Chenillard_interruption.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TP_Chenillard_interruption.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/btnInit.p1: btnInit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/btnInit.p1.d 
	@${RM} ${OBJECTDIR}/btnInit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/btnInit.p1 btnInit.c 
	@-${MV} ${OBJECTDIR}/btnInit.d ${OBJECTDIR}/btnInit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/btnInit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TP_Buzzer_PWM.p1: TP_Buzzer_PWM.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TP_Buzzer_PWM.p1.d 
	@${RM} ${OBJECTDIR}/TP_Buzzer_PWM.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TP_Buzzer_PWM.p1 TP_Buzzer_PWM.c 
	@-${MV} ${OBJECTDIR}/TP_Buzzer_PWM.d ${OBJECTDIR}/TP_Buzzer_PWM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TP_Buzzer_PWM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TP_voltmetre.p1: TP_voltmetre.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TP_voltmetre.p1.d 
	@${RM} ${OBJECTDIR}/TP_voltmetre.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/TP_voltmetre.p1 TP_voltmetre.c 
	@-${MV} ${OBJECTDIR}/TP_voltmetre.d ${OBJECTDIR}/TP_voltmetre.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TP_voltmetre.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1: librairies_utiles/C_Source_Files/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/librairies_utiles/C_Source_Files" 
	@${RM} ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1.d 
	@${RM} ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1 librairies_utiles/C_Source_Files/lcd.c 
	@-${MV} ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.d ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/librairies_utiles/C_Source_Files/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/temperature.p1: temperature.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/temperature.p1.d 
	@${RM} ${OBJECTDIR}/temperature.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/temperature.p1 temperature.c 
	@-${MV} ${OBJECTDIR}/temperature.d ${OBJECTDIR}/temperature.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/temperature.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1: librairies_utiles/C_Source_Files/i2c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/librairies_utiles/C_Source_Files" 
	@${RM} ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1.d 
	@${RM} ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1 librairies_utiles/C_Source_Files/i2c.c 
	@-${MV} ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.d ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/librairies_utiles/C_Source_Files/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit4  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/TP_MICRO_AP4_CORRE_DUTOIT.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
