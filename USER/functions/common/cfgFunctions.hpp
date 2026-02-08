class GRAD_Z_common {
    tag = "GRAD_Z_common";
    class common {
       
        file = "USER\functions\common";
        class addCuratorModules { preInit = 1; };

        class curatorEventhandler { postInit = 1; };
        class curatorShowFeedbackMessage;
        class setObjectScaleSafe;
        class checkLifestate { postInit = 1; };
    };
};
