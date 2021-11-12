import React from "react";
import { withRouter } from 'react-router-dom';
import { FaStar } from 'react-icons/fa';

class ProductIndexItem extends React.Component {
    constructor(props){
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(){
        const productId = this.props.product.id;
        document.body.scrollTop = document.documentElement.scrollTop = 0;
        this.props.history.push(`/products/${productId}`);
    }

    render(){
        const {name, price, picture_url, average_rating, total_reviews} = this.props.product;

        const eta = new Date();
        eta.setDate(eta.getDate() + 2);
        const etaArray = eta.toDateString().split(' ');
        const etaString = `${etaArray[0]}, ${etaArray[1]} ${etaArray[2]}`;
        const dollarsCents = price.toString().split(".");
        const dollars = dollarsCents[0];
        const cents = dollarsCents[1];
        const totalReviews = total_reviews ? total_reviews : 0;
        const averagRating = average_rating ? average_rating : 3.0;
        return(
            <div className="product-card">
                <div className="product-card-image-container" onClick={this.handleClick}>
                    <img className="product-card-image" src={picture_url} alt={name} />
                </div>
                <div className="product-card-title" onClick={this.handleClick}>{name}</div>
                <div className="product-card-rating">
                    <div className="product-card-rating-stars">
                        {[...Array(5)].map((star, i) => {
                            const ratingValue = i + 1;
                            return (
                                <FaStar 
                                    key={i}
                                    className="star" 
                                    color={ratingValue <= ( averagRating ) ? "#ffa41b" : "#c9c9c9"} 
                                    size={15}
                                />
                            );
                        })}
                    </div>
                    <div className="product-card-total-reviews">
                        {totalReviews}
                    </div>
                </div>
                <div className="product-card-price" onClick={this.handleClick}>
                    <span className="dollar-sign">$</span><span className="price-dollars">{dollars}</span><span className="price-cents">{cents}</span>
                </div>
                <div className="product-card-shipping">Get it as soon as <b>{etaString}</b><br/>FREE Shipping by Nozama</div>
            </div>
        );
    }
}

export default withRouter(ProductIndexItem);