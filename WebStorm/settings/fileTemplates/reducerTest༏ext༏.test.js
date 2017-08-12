import $reducerName from './reducer';
import * as types from './actionTypes';

describe('reducers', () => {

  it('should return initial state when called 1st time with no state', () => {
    expect($reducerName(undefined, {type: '@REDUX.INIT_STATE'}))
      .toBeTruthy();
  });

  it('should return unmodified state for unhandled action types', () => {
    const state = {
      just_to_test: [1,2,3]
    };
    expect($reducerName(state, {type: '@UNIT_TEST.DISCARD'}))
      .toEqual(state);
  });

});
