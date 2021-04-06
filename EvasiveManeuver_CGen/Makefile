# THIS IS A GENERATED FILE => DO NOT EDIT
# Objective: compile and link a unit test exectable
# Remark: contains hard dependencies to google test framework

OUTPUT_CONFIG=Debug
TEST_BASE_NAME=UnitTests
TEST_EXE=$(OUTPUT_CONFIG)/$(TEST_BASE_NAME).exe
MKDIR_CMD=mkdir -p

# Compiler options
COMMON_FLAGS=-O0 -g3 -Wall -c -fmessage-length=0 -DESDL_PLATFORM_INTERNAL_BUILD -DOSENV_SINGLE_THREADED 
CFLAGS=$(COMMON_FLAGS) -Wno-unused -std=c17
CXXFLAGS=$(COMMON_FLAGS) -std=gnu++0x

INC=-Iinclude\
    -Isrc\
    -Itests\
    -Icoverage\
    -IC:/ETAS/ASCET-DEVELOPER7.6/configuration/org.eclipse.osgi/82/0/.cp/platform

# Google test config
GOOGLE_TEST_OBJECTS=$(OUTPUT_CONFIG)/tests/AllTests.o
OBJECTS=$(GOOGLE_TEST_OBJECTS)\
  $(OUTPUT_CONFIG)/src/EvasiveManeuver_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_Automatic.o\
  $(OUTPUT_CONFIG)/src/assertLib_Assert_Impl.o\
  $(OUTPUT_CONFIG)/src/myCar_Obstacles_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_DriverTempo_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_Driver_Tempo_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_Pre_Condition_Maneuver_Automatic.o\
  $(OUTPUT_CONFIG)/src/SystemLib_Miscellaneous_EdgeFalling_Impl.o\
  $(OUTPUT_CONFIG)/src/SystemLib_Miscellaneous_EdgeRising_Impl.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_SMLaneChange_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_SM_laneChange_left_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_linksLenken_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_rechtsLenken_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_SM_laneChange_right_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_Automatic.o\
  $(OUTPUT_CONFIG)/src/coverageLib_CoverageInstrumentation_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_beforeFirstObstacle_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_atSecondObstacle_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_beforeFourthObstacle_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_afterFourthObstacle_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_atThirdObstacle_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_testMinDist5_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_beforeSecondObstacle_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_atFourthObstacle_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_testMinDist30_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_testMinDist60_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_beforeThirdObstacle_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_atFirstObstacle_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_DriverTempo_vtargetSmaller_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_DriverTempo_vtargetGreater_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testEmergencyRising_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testEmergencyFalling_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRightEmergencyFalling_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine5_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRightEmergencyRising_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRight_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine60_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeLeft_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeLeftEmergencyRising_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine30_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_SMLaneChange_testFullCircleRight_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_SMLaneChange_testFullCircleLeft_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_testLeft_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_testRight_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_testLeftMax_Automatic.o\
  $(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_testRightMax_Automatic.o\
  $(OUTPUT_CONFIG)/coverage/esdl_coverage.o\

LIB_PATHS_OPTIONS=\
  -L$(pathcnv SN, C:/Users/fschi/ETAS/ASCET-DEVELOPER-7.6.0/workspace/Projekt_Grafische_Programmierung/EvasiveManeuver_CGen/lib)\
  -L$(pathcnv SN, C:/Users/fschi/ETAS/ASCET-DEVELOPER-7.6.0/workspace/Projekt_Grafische_Programmierung/EvasiveManeuver)\

LIB_FILES_OPTIONS=-lgtest -lESDL_Linear_Interpolation_x86 


# Google test: compile rules google test entry component AllTests.cpp
$(OUTPUT_CONFIG)/tests/AllTests.o: tests/AllTests.cpp | $(OUTPUT_CONFIG)
	g++ $(INC) $(CXXFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/EvasiveManeuver_Automatic.o: src/EvasiveManeuver_Automatic.c src/EvasiveManeuver_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/assertLib_Assert_Impl.o: src/assertLib_Assert_Impl.c src/assertLib_Assert_Impl.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_Obstacles_Automatic.o: src/myCar_Obstacles_Automatic.c src/myCar_Obstacles_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_DriverTempo_Automatic.o: src/myCar_UnitTests_UnitTest_DriverTempo_Automatic.c src/myCar_UnitTests_UnitTest_DriverTempo_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_Driver_Tempo_Automatic.o: src/myCar_Driver_Tempo_Automatic.c src/myCar_Driver_Tempo_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_Pre_Condition_Maneuver_Automatic.o: src/myCar_Pre_Condition_Maneuver_Automatic.c src/myCar_Pre_Condition_Maneuver_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/SystemLib_Miscellaneous_EdgeFalling_Impl.o: src/SystemLib_Miscellaneous_EdgeFalling_Impl.c src/SystemLib_Miscellaneous_EdgeFalling_Impl.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/SystemLib_Miscellaneous_EdgeRising_Impl.o: src/SystemLib_Miscellaneous_EdgeRising_Impl.c src/SystemLib_Miscellaneous_EdgeRising_Impl.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_SMLaneChange_Automatic.o: src/myCar_UnitTests_UnitTest_SMLaneChange_Automatic.c src/myCar_UnitTests_UnitTest_SMLaneChange_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_SM_laneChange_left_Automatic.o: src/myCar_SM_laneChange_left_Automatic.c src/myCar_SM_laneChange_left_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_linksLenken_Automatic.o: src/myCar_linksLenken_Automatic.c src/myCar_linksLenken_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_rechtsLenken_Automatic.o: src/myCar_rechtsLenken_Automatic.c src/myCar_rechtsLenken_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_SM_laneChange_right_Automatic.o: src/myCar_SM_laneChange_right_Automatic.c src/myCar_SM_laneChange_right_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_Automatic.o: src/myCar_UnitTests_UnitTest_Lenken_Automatic.c src/myCar_UnitTests_UnitTest_Lenken_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/coverageLib_CoverageInstrumentation_Automatic.o: src/coverageLib_CoverageInstrumentation_Automatic.c src/coverageLib_CoverageInstrumentation_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_beforeFirstObstacle_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_beforeFirstObstacle_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_beforeFirstObstacle_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_atSecondObstacle_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_atSecondObstacle_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_atSecondObstacle_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_beforeFourthObstacle_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_beforeFourthObstacle_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_beforeFourthObstacle_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_afterFourthObstacle_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_afterFourthObstacle_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_afterFourthObstacle_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_atThirdObstacle_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_atThirdObstacle_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_atThirdObstacle_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_testMinDist5_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_testMinDist5_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_testMinDist5_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_beforeSecondObstacle_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_beforeSecondObstacle_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_beforeSecondObstacle_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_atFourthObstacle_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_atFourthObstacle_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_atFourthObstacle_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_testMinDist30_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_testMinDist30_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_testMinDist30_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_testMinDist60_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_testMinDist60_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_testMinDist60_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_beforeThirdObstacle_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_beforeThirdObstacle_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_beforeThirdObstacle_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Obstacles_atFirstObstacle_Automatic.o: src/myCar_UnitTests_UnitTest_Obstacles_atFirstObstacle_Automatic.c src/myCar_UnitTests_UnitTest_Obstacles_atFirstObstacle_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_DriverTempo_vtargetSmaller_Automatic.o: src/myCar_UnitTests_UnitTest_DriverTempo_vtargetSmaller_Automatic.c src/myCar_UnitTests_UnitTest_DriverTempo_vtargetSmaller_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_DriverTempo_vtargetGreater_Automatic.o: src/myCar_UnitTests_UnitTest_DriverTempo_vtargetGreater_Automatic.c src/myCar_UnitTests_UnitTest_DriverTempo_vtargetGreater_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testEmergencyRising_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testEmergencyRising_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testEmergencyRising_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testEmergencyFalling_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testEmergencyFalling_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testEmergencyFalling_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRightEmergencyFalling_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRightEmergencyFalling_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRightEmergencyFalling_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine5_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine5_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine5_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRightEmergencyRising_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRightEmergencyRising_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRightEmergencyRising_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRight_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRight_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeRight_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine60_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine60_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine60_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeLeft_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeLeft_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeLeft_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeLeftEmergencyRising_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeLeftEmergencyRising_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testLaneChangeLeftEmergencyRising_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine30_Automatic.o: src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine30_Automatic.c src/myCar_UnitTests_UnitTest_PreConditionManeuver_testMaxCountLine30_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_SMLaneChange_testFullCircleRight_Automatic.o: src/myCar_UnitTests_UnitTest_SMLaneChange_testFullCircleRight_Automatic.c src/myCar_UnitTests_UnitTest_SMLaneChange_testFullCircleRight_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_SMLaneChange_testFullCircleLeft_Automatic.o: src/myCar_UnitTests_UnitTest_SMLaneChange_testFullCircleLeft_Automatic.c src/myCar_UnitTests_UnitTest_SMLaneChange_testFullCircleLeft_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_testLeft_Automatic.o: src/myCar_UnitTests_UnitTest_Lenken_testLeft_Automatic.c src/myCar_UnitTests_UnitTest_Lenken_testLeft_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_testRight_Automatic.o: src/myCar_UnitTests_UnitTest_Lenken_testRight_Automatic.c src/myCar_UnitTests_UnitTest_Lenken_testRight_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_testLeftMax_Automatic.o: src/myCar_UnitTests_UnitTest_Lenken_testLeftMax_Automatic.c src/myCar_UnitTests_UnitTest_Lenken_testLeftMax_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/src/myCar_UnitTests_UnitTest_Lenken_testRightMax_Automatic.o: src/myCar_UnitTests_UnitTest_Lenken_testRightMax_Automatic.c src/myCar_UnitTests_UnitTest_Lenken_testRightMax_Automatic.h | $(OUTPUT_CONFIG)
	gcc $(INC) $(CFLAGS) -o $@ $<

$(OUTPUT_CONFIG)/coverage/esdl_coverage.o: coverage/esdl_coverage.cpp coverage/esdl_coverage.h | $(OUTPUT_CONFIG)
	g++ $(INC) $(CXXFLAGS) -o $@ $<

all:: $(TEST_EXE)

clean::
	rm -rf $(OUTPUT_CONFIG)

.PHONY: $(OUTPUT_CONFIG)
$(OUTPUT_CONFIG):
	$(MKDIR_CMD) $@/src
	$(MKDIR_CMD) $@/tests
	$(MKDIR_CMD) $@/coverage

$(TEST_EXE): $(OBJECTS)
	g++ -o $@ -static $(OBJECTS) $(LIB_PATHS_OPTIONS) $(LIB_FILES_OPTIONS)
