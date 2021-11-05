import React from 'react';
import { withRouter } from 'react-router';
import ProductManager from '../../util/product_manager';

class SearchBar extends React.Component {
    constructor(props){
        super(props);
        const queryParams = this.props.location.search.replace(/\?/g, '').split("+")
        this.query = queryParams[0] ? queryParams[0].substring(2) : '';
        this.department = queryParams[1] ? queryParams[1].substring(2) : 'All'
        this.state = { 
            query: this.query,
            department: this.department
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.props.updateFilter('department', this.state.department);
        this.props.updateFilter('query', this.state.query);
    }

    componentDidMount(){
        this.ProductManager = new ProductManager(this.state.query);
        this.ProductManager.updateProducts(this.props.products);
    }

    componentDidUpdate(){
        this.ProductManager.updateProducts(this.props.products);
    }

    componentWillUnmount(){
        document.querySelector(".search-bar").value = '';
    }

    handleSubmit(e){
        e.preventDefault();
        this.props.history.push({
            pathname: '/products/',
            search: `q=${this.state.query}+d=${this.state.department}`
        });

        this.props.updateFilter('department', this.state.department);
        this.props.updateFilter('query', this.state.query);
    }

    handleInput(filter){
        return (e) => {
            this.setState({ [filter]: e.target.value});
        }
    }

    render(){
        return (
            <div>
                <form className="search-bar-form" onSubmit={this.handleSubmit}>
                    <select type="dropdown" className="search-department-dropdown" onChange={this.handleInput('department')}>
                        <option defaultValue value="All">All</option>
                        <option value="Appliances">Appliances</option>
                        <option value="Apps & Games">Apps & Games</option>
                        <option value="Arts, Crafts & Sewing">Arts, Crafts & Sewing</option>
                        <option value="Automotive Parts & Accessories">Automotive Parts & Accessories</option>
                        <option value="Baby">Baby</option>
                        <option value="Beauty & Personal Care">Beauty & Personal Care</option>
                        <option value="Books">Books</option>
                        <option value="CDs & Vinyl">CDs & Vinyl</option>
                        <option value="Cell Phones & Accessories">Cell Phones & Accessories</option>
                        <option value="Clothing, Shoes & Jewelry">Clothing, Shoes & Jewelry</option>
                        <option value="Collectibles & Fine Art">Collectibles & Fine Art</option>
                        <option value="Computers">Computers</option>
                        <option value="Digital Music">Digital Music</option>
                        <option value="Electronics">Electronics</option>
                        <option value="Garden & Outdoor">Garden & Outdoor</option>
                        <option value="Gift Cards">Gift Cards</option>
                        <option value="Grocery & Gourmet Food">Grocery & Gourmet Food</option>
                        <option value="Handmade">Handmade</option>
                        <option value="Health, Household & Baby Care">Health, Household & Baby Care</option>
                        <option value="Home & Kitchen">Home & Kitchen</option>
                        <option value="Industrial & Scientific">Industrial & Scientific</option>
                        <option value="Luggage & Travel Gear">Luggage & Travel Gear</option>
                        <option value="Movies & TV">Movies & TV</option>
                        <option value="Musical Instruments">Musical Instruments</option>
                        <option value="Office Products">Office Products</option>
                        <option value="Pet Supplies">Pet Supplies</option>
                        <option value="Smart Home">Smart Home</option>
                        <option value="Software">Software</option>
                        <option value="Sports & Outdoors">Sports & Outdoors</option>
                        <option value="Tools & Home Improvement">Tools & Home Improvement</option>
                        <option value="Toys & Games">Toys & Games</option>
                        <option value="Video Games">Video Games</option>
                    </select>
                    <input className="search-bar" type="text" value={this.state.query} onChange={this.handleInput('query')} />
                    <button className="search-button"><i className="fas fa-search"></i></button>
                </form>
            </div>
        );
    }
}

export default withRouter(SearchBar);