#!/usr/bin/env bash

function nod-routineUpdate() {
  export ROUTINE_UPDATE_RETURN=1;
  nod-import update
  if nod-updateAll; then
    export ROUTINE_UPDATE_RETURN=0;
  fi
  return $ROUTINE_UPDATE_RETURN;
}

function nod-routineNotify() {
  osascript -e "display notification \"$1\" with title \"Routine\""
  return 0;
}

function nod-routineAll() {
  export ROUTINE_ALL_STATUS=1;
  nod-routineNotify 'Started';
  if  nod-routineUpdate; then
    nod-routineNotify 'Success';
    echo "Routine: Success";
    export ROUTINE_ALL_STATUS=0;
  fi
  nod-routineNotify 'Routine: Failed':"$LAST_UPDATE_FAIL";
  nod-routineNotify 'Failed':"$LAST_UPDATE_FAIL";
  return $ROUTINE_ALL_STATUS;
}
