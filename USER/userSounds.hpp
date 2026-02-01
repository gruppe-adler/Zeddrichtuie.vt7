/*
*   Hier können eigene Sounds eingebunden werden.
*   Ist in CfgSounds included.
*/

#define VOLUME 3
#define DISTANCE 15

class teleport
{
    name = "teleport";
    sound[] = {"USER\sounds\teleport.ogg", VOLUME, 1, 500};
    titles[] = {0, ""};
};

class teleport_global
{
    name = "teleport_global";
    sound[] = {"USER\sounds\teleport_global.ogg", VOLUME, 1, 500};
    titles[] = {0, ""};
};

class teleport_flash
{
    name = "teleport_flash";
    sound[] = {"USER\sounds\teleport_flash.ogg", VOLUME, 1, 500};
    titles[] = {0, ""};
};

class crescendo
{
    name = "crescendo";
    sound[] = {"USER\sounds\crescendo.ogg", VOLUME, 1, 500};
    titles[] = {0, ""};
};


class GRAD_electricFence_sound_hum
{
    name = "GRAD_electricFence_sound_hum";
    sound[] = {"USER\sounds\hum.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_electricFence_sound_spark1
{
    name = "GRAD_electricFence_sound_spark1";
    sound[] = {"USER\sounds\spark1.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_electricFence_sound_spark2
{
    name = "GRAD_electricFence_sound_spark2";
    sound[] = {"USER\sounds\spark2.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_electricFence_sound_spark3
{
    name = "GRAD_electricFence_sound_spark3";
    sound[] = {"USER\sounds\spark3.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_Z_drone
{
    name = "GRAD_Z_drone";
    sound[] = {"USER\sounds\drone.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_Z_hum2
{
    name = "GRAD_Z_hum2";
    sound[] = {"USER\sounds\hum2.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_Z_ropethump
{
    name = "GRAD_Z_ropethump";
    sound[] = {"USER\sounds\ropethump.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_Z_crescendo
{
    name = "GRAD_Z_crescendo";
    sound[] = {"USER\sounds\crescendo.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_Z_circus
{
    name = "GRAD_Z_circus";
    sound[] = {"USER\sounds\circus.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_Z_teleportEnd
{
    name = "GRAD_Z_teleportEnd";
    sound[] = {"USER\sounds\teleport_end.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_Z_teleport2
{
    name = "GRAD_Z_teleport2";
    sound[] = {"USER\sounds\teleport2.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_Z_teleport_fade
{
    name = "GRAD_Z_teleport_fade";
    sound[] = {"USER\sounds\teleport_fade.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class GRAD_Z_teleport3
{
    name = "GRAD_Z_teleport3";
    sound[] = {"USER\sounds\teleport3.ogg", VOLUME, 1, DISTANCE};
    titles[] = {0, ""};
};

class Teleport_phase3
{
    // how the sound is referred to in the editor (e.g. trigger effects)
    name = "Teleport_phase3";
    // filename, volume, pitch, distance (optional)
    sound[] = { "USER\sounds\Teleport_phase3.ogg", VOLUME, 1, 500 };
    // subtitle delay in seconds, subtitle text
    titles[] = {  };
};
