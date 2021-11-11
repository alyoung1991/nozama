import { UPDATE_SEARCH_QUERY } from "../actions/filter_actions";

const defaultFilters = Object.freeze({
    query: '',
    department: ''
});

const filterReducer = (state = defaultFilters, action) => {
    Object.freeze(state);
    switch(action.type){
        case UPDATE_SEARCH_QUERY:
            const newQuery =  {
                [action.filter]: action.value
            };
            return Object.assign({}, state, newQuery);
        default:
            return state;
    }
}

export default filterReducer;