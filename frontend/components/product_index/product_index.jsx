import React from "react";
import { Link } from "react-router-dom";
import ProductIndexItem from "./product_index_item";

class ProductIndex extends React.Component {
    render(){
        const searchTerm = this.props.location.search.substring(3, this.props.location.search.indexOf('+'));
        const searchTermDisplay = <span>&nbsp;for <span className="search-term-display">"{searchTerm}"</span></span>;
        const dogImgSrcs = ['https://images-na.ssl-images-amazon.com/images/G/01/error/25._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/5._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/188._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/151._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/155._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/150._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/118._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/167._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/77._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/17._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/161._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/176._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/90._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/174._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/182._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/190._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/133._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/81._TTD_.jpg',
                            'https://images-na.ssl-images-amazon.com/images/G/01/error/62._TTD_.jpg'];
        const productsContainer = (this.props.products.length > 0) ? (
            <div className="products-container">
                {this.props.products.map((product) => {
                    return <ProductIndexItem key={product.id} product={product} />
                })}
            </div>
        ) : (
            <div className="products-container">
                <div className="no-results-container">
                    <Link to="/"><img className="no-result-message" src={window.noResults} alt="" /></Link>
                    <img className="nozama-dog" src={dogImgSrcs[Math.floor(Math.random()*dogImgSrcs.length)]} alt="dog-of-nozama" />
                </div>
            </div>
        );
        return(
            <div className="product-index-container">
                <div className="products-index-top-bar">{this.props.products.length} results{(searchTerm != '' ? searchTermDisplay : '')} </div>
                {productsContainer}
            </div>
        );
    }
}

export default ProductIndex;