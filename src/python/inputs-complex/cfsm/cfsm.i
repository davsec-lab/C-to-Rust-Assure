struct cfsm_Ctx;
typedef void (*cfsm_TransitionFunction)(struct cfsm_Ctx * fsm);
typedef void (*cfsm_EventFunction)(struct cfsm_Ctx * fsm, int eventId);
typedef void (*cfsm_ProcessFunction)(struct cfsm_Ctx * fsm);
typedef void *cfsm_InstanceDataPtr;
typedef struct cfsm_Ctx {
    cfsm_InstanceDataPtr ctxPtr;
    cfsm_TransitionFunction onLeave;
    cfsm_ProcessFunction onProcess;
    cfsm_EventFunction onEvent;
} cfsm_Ctx;
void cfsm_init(cfsm_Ctx * fsm, cfsm_InstanceDataPtr instanceData);
void cfsm_transition(struct cfsm_Ctx * fsm, cfsm_TransitionFunction enterFunc);
void cfsm_process(struct cfsm_Ctx * fsm);
void cfsm_event(struct cfsm_Ctx * fsm, int eventId);
void cfsm_init(struct cfsm_Ctx * fsm, cfsm_InstanceDataPtr instanceData)
{
    *fsm = (cfsm_Ctx) {instanceData, 0, 0, 0};
}
void cfsm_transition(struct cfsm_Ctx * fsm, cfsm_TransitionFunction enterFunc)
{
    if ((cfsm_TransitionFunction)0 != fsm->onLeave)
    {
        fsm->onLeave(fsm);
    }
    fsm->onEvent = (cfsm_EventFunction)0;
    fsm->onLeave = (cfsm_TransitionFunction)0;
    fsm->onProcess= (cfsm_ProcessFunction)0;
    if ((cfsm_TransitionFunction)0 != enterFunc)
    {
        enterFunc(fsm);
    }
}
void cfsm_process(struct cfsm_Ctx * fsm)
{
    if ((cfsm_ProcessFunction)0 != fsm->onProcess)
    {
        fsm->onProcess(fsm);
    }
}
void cfsm_event(struct cfsm_Ctx * fsm, int eventId)
{
    if ((cfsm_EventFunction)0 != fsm->onEvent)
    {
        fsm->onEvent(fsm, eventId);
    }
}

