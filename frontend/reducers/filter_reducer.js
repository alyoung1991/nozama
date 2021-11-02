import { UPDATE_SEARCH_QUERY } from "../actions/filter_actions";

const defaultFilters = Object.freeze({
    query: ''
});

const filterReducer = (state = defaultFilters, action) => {
    Object.freeze(state);

    switch(action.type){
        case UPDATE_SEARCH_QUERY:
            const nextState = Object.assign({}, state);
            nextState.query = action.query;
            return nextState;
        default:
            return state;
    }
}

export default filterReducer;