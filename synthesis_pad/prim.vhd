LIBRARY IEEE;
USE IEEE.Std_logic_1164.all;

USE WORK.VITAL_Timing.all;
USE WORK.VITAL_Primitives.all;

package prim is

CONSTANT DefCombSpikeMsgOn : BOOLEAN := true;
CONSTANT DefCombSpikeXOn   : BOOLEAN := true;
CONSTANT DefSeqMsgOn       : BOOLEAN := true;
CONSTANT DefSeqXOn         : BOOLEAN := true;

CONSTANT DefDummyDelay    : VitalDelayType := 1.00 ns;
CONSTANT DefDummySetup    : VitalDelayType := 1.00 ns;
CONSTANT DefDummyHold     : VitalDelayType := 1.00 ns;
CONSTANT DefDummyWidth    : VitalDelayType := 1.00 ns;
CONSTANT DefDummyRecovery : VitalDelayType := 1.00 ns;
CONSTANT DefDummyRemoval  : VitalDelayType := 1.00 ns;
CONSTANT DefDummyIpd      : VitalDelayType := 0.00 ns;
CONSTANT DefDummyIsd      : VitalDelayType := 0.00 ns;
CONSTANT DefDummyIcd      : VitalDelayType := 0.00 ns;

CONSTANT udp_dff : VitalStateTableType (1 TO 21, 1 TO 7) := (
--    NOTIFIER   D      CLK     RN       S      Q(t)   Q(t+1)
     (  'X',    '-',    '-',    '-',    '-',    '-',    'X'  ),
     (  '-',    '-',    '-',    '-',    '1',    '-',    '1'  ),
     (  '-',    '-',    '-',    '1',    '0',    '-',    '0'  ),
     (  '-',    '0',    '/',    '-',    '0',    '-',    '0'  ),
     (  '-',    '1',    '/',    '0',    '-',    '-',    '1'  ),
     (  '-',    '1',    '*',    '0',    '-',    '1',    '1'  ),
     (  '-',    '0',    '*',    '-',    '0',    '0',    '0'  ),
     (  '-',    '-',    '\',   '-',    '-',    '-',    'S'  ),
     (  '-',    '*',    'B',    '-',    '-',    '-',    'S'  ),
     (  '-',    '-',    'B',    '0',    '*',    '1',    '1'  ),
     (  '-',    '1',    'X',    '0',    '*',    '1',    '1'  ),
     (  '-',    '-',    'B',    '*',    '0',    '0',    '0'  ),
     (  '-',    '0',    'X',    '*',    '0',    '0',    '0'  ),
     (  '-',    'B',    'r',    '-',    '-',    '-',    'X'  ),
     (  '-',    '/',    'X',    '-',    '-',    '-',    'X'  ),
     (  '-',    '-',    '-',    '-',    '*',    '-',    'X'  ),
     (  '-',    '-',    '-',    '*',    '-',    '-',    'X'  ),
     (  '-',    '-',    'f',    '-',    '-',    '-',    'X'  ),
     (  '-',    '\',   'X',    '0',    '-',    '-',    'X'  ),
     (  '-',    'B',    'X',    '-',    '-',    '-',    'S'  ),
     (  '-',    '-',    'S',    '-',    '-',    '-',    'S'  ));

CONSTANT udp_tlat : VitalStateTableType (1 TO 20, 1 TO 7) := (
--      NOT      D       G       R       S      Q(t)  Q(t+1)
     (  'X',    '-',    '-',    '-',    '-',    '-',    'X'  ),
     (  '-',    '-',    '-',    '-',    '1',    '-',    '1'  ),
     (  '-',    '-',    '-',    '1',    '0',    '-',    '0'  ),
     (  '-',    '1',    '1',    '0',    '-',    '-',    '1'  ),
     (  '-',    '0',    '1',    '-',    '0',    '-',    '0'  ),
     (  '-',    '1',    '*',    '0',    '-',    '1',    '1'  ),
     (  '-',    '0',    '*',    '-',    '0',    '0',    '0'  ),
     (  '-',    '*',    '0',    '-',    '-',    '-',    'S'  ),
     (  '-',    '-',    '0',    '0',    '*',    '1',    '1'  ),
     (  '-',    '1',    '-',    '0',    '*',    '1',    '1'  ),
     (  '-',    '-',    '0',    '*',    '0',    '0',    '0'  ),
     (  '-',    '0',    '-',    '*',    '0',    '0',    '0'  ),
     (  '-',    '0',    '-',    '-',    '0',    '0',    '0'  ),
     (  '-',    '1',    '-',    '0',    '-',    '1',    '1'  ),
     (  '-',    '*',    '-',    '-',    '-',    '-',    'X'  ),
     (  '-',    '-',    '-',    '*',    '-',    '-',    'X'  ),
     (  '-',    '-',    '-',    '-',    '*',    '-',    'X'  ),
     (  '-',    'B',    'r',    '0',    '0',    '-',    'X'  ),
     (  '-',    'B',    'X',    '0',    '0',    '-',    'S'  ),
     (  '-',    '-',    'S',    '-',    '-',    '-',    'S'  ) );

CONSTANT udp_rslat : VitalStateTableType (1 TO 12, 1 TO 5) := (
--      NOT      R       S      Q(t)  Q(t+1)
     (  'X',    '-',    '-',    '-',    'X'  ),
     (  '-',    '-',    '1',    '-',    '1'  ),
     (  '-',    '1',    '0',    '-',    '0'  ),
     (  '-',    '0',    '-',    '1',    '1'  ),
     (  '-',    '-',    '0',    '0',    '0'  ),
     (  '-',    '-',    '-',    '-',    'S'  ),
     (  '-',    '0',    '*',    '1',    '1'  ),
     (  '-',    '*',    '0',    '0',    '0'  ),
     (  '-',    '-',    '0',    '0',    '0'  ),
     (  '-',    '0',    '-',    '1',    '1'  ),
     (  '-',    '*',    '-',    '-',    'X'  ),
     (  '-',    '-',    '*',    '-',    'X'  ) );


end prim;
