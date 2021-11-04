import React from 'react';
import SearchBar from './search_bar';

const Search = ({products, updateSearchQuery}) => (
    <div>
        <SearchBar products={products} updateSearchQuery={updateSearchQuery} />
    </div>
)

export default Search;