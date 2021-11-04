import React from 'react';
import { withRouter } from 'react-router';
import ProductManager from '../../util/product_manager';

class SearchBar extends React.Component {
    constructor(props){
        super(props);
        this.query = this.props.location.search.split('=')[1] ? this.props.location.search.split('=')[1] : '';
        this.state = { query: this.query };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.props.updateSearchQuery(this.state.query);
    }

    componentDidMount(){
        this.ProductManager = new ProductManager(this.state.query);
        this.ProductManager.updateProducts(this.props.products);
    }

    componentDidUpdate(){
        this.ProductManager.updateProducts(this.props.products);
    }

    handleSubmit(e){
        e.preventDefault();

        this.props.history.push({
            pathname: '/products/',
            search: `q=${this.state.query}`
        });

        this.props.updateSearchQuery(this.state.query);
    }

    handleInput(){
        return (e) => {
            this.setState({ query: e.target.value});
        }
    }

    render(){
        return (
            <div>
                <form className="search-bar-form" onSubmit={this.handleSubmit}>
                    <select className="search-department-dropdown" type="dropdown">
                        <option value="All">All</option>
                    </select>
                    <input className="search-bar" type="text" value={this.state.query} onChange={this.handleInput()} />
                    <button className="search-button"><i className="fas fa-search"></i></button>
                </form>
            </div>
        );
    }
}

export default withRouter(SearchBar);