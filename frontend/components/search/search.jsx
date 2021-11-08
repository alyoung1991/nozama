import React from 'react';
import SearchBar from './search_bar';

const Search = ({products, updateFilter}) => (
    <div className="search-bar-container">
        <SearchBar products={products} updateFilter={updateFilter} />
    </div>
)

export default Search;