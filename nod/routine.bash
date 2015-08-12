#!/usr/bin/env bash

function nod-routineUpdate() {
  nod-import update
  nod-updateAll
}

function nod-routineNotify() {
  osascript -e "display notification \"$1\" with title \"Routine\""
}

function nod-routineAll() {
  export ROUTINE_ALL_STATUS=1;
  nod-routineNotify 'Started';
  if  nod-routineUpdate; then
    nod-routineNotify 'Success';
    echo "Routine: Success";
  fi
  nod-routineNotify 'Routine: Failed':"$LAST_UPDATE_FAIL";
  nod-routineNotify 'Failed':"$LAST_UPDATE_FAIL";
  return $ROUTINE_ALL_STATUS;
}
