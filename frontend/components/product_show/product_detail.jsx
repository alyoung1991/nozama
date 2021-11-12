import React from 'react';
import { FaStar } from 'react-icons/fa';
import { withRouter } from 'react-router-dom';
import ReviewListItemContainer from './review_list_item_container';

class ProductDetail extends React.Component {
    constructor(props){
        super(props);

        this.addProductToCart = this.addProductToCart.bind(this);
    }

    componentDidMount(){
        if(this.props.sessionId){
            this.props.fetchCart(1, this.props.sessionId);
        }
    }

    addProductToCart(product){
        const cartId = this.props.sessionId;
        const cartItem = {
            "quantity": 1,
            "product_id": product.id,
            "cart_id": cartId
        }
        this.props.createCartItem(cartItem);
        this.props.fetchCart(1, this.props.sessionId);
        this.props.history.push({
            pathname: '/cart/'
        });
    }

    render(){
        let {product, reviews} = this.props;

        if(Object.keys(product).length <= 1)
            return null;

        const reviewList = (reviews) => {
            return reviews.map(review => (
                <ReviewListItemContainer
                    review={review}
                    key={review.id}
                />
            ))
        };

        let averageRating = 3;

        if(reviews.length !== 0){
            averageRating = reviews.map(review => {
                return review.rating;
            }).reduce((curr, acc) => curr + acc) / reviews.length;
        }

        const aboutThisItemArray = product.description.split("//");
        const priceFormatter = new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: 'USD'
        });

        // delivery string builder
        const freeEta = new Date();
        const fastEta = new Date();

        freeEta.setDate(freeEta.getDate() + 7);
        const freeEtaArray = freeEta.toDateString().split(' ');
        const freeEtaString = `${freeEtaArray[0]}, ${freeEtaArray[1]} ${freeEtaArray[2]}`;

        fastEta.setDate(fastEta.getDate() + 2);
        const fastEtaArray = fastEta.toDateString().split(' ');
        const fastEtaString = `${fastEtaArray[0]}, ${fastEtaArray[1]} ${fastEtaArray[2]}`;

        // time until midnight string builder
        const today1 = new Date();
        const OrderWithinString = `Order within ${23 - today1.getHours()} hrs and ${59 - today1.getMinutes()} mins`; 

        // returnable until string builder
        const today2 = new Date();
        today2.setMonth(today2.getMonth() + 2);
        const returnableDateArray = today2.toDateString().split(' ');
        const returnDeadlineString = `Returnable until ${returnableDateArray[1]} ${returnableDateArray[2]}, ${returnableDateArray[3]}`;

        return(
            <div className="product-show-container">
                <div className="product-main-row">
                    <div className="product-main-section">
                        <div className="return-row">
                            <div className="return-link-row">
                                <div className="nav-back-button" onClick={this.props.history.goBack}>
                                    <div>Back to results</div>
                                </div>
                            </div>
                        </div>
                        <div className="main-row">
                            <div className="product-gallery-section">
                                <img className="product-show-image" src={product.picture_url} alt={product.name} />
                            </div>
                            <div className="product-info-section">
                                <div className="product-show-title">{product.name}</div>
                                <div className="product-show-rating">
                                    <div className="product-show-stars">
                                        {[...Array(5)].map((star, i) => {
                                            const ratingValue = i + 1;

                                            return (
                                                <FaStar 
                                                    key={i}
                                                    className="star" 
                                                    color={ratingValue <= ( averageRating ) ? "#ffa41b" : "#c9c9c9"} 
                                                    size={15}
                                                />
                                            );
                                        })}
                                    </div>
                                    <div className="product-show-num-ratings">
                                        {reviews.length} ratings
                                    </div>
                                </div>
                                <div className="product-show-price">Price: 
                                    <span className="price-amount">{priceFormatter.format(product.price)}</span>
                                    <span className="free-returns-label">& <span className="free-returns-link">FREE Returns</span></span>
                                </div>
                                <div className="about-heading"><b>About this item</b></div>
                                <ul className="about-list">
                                    {aboutThisItemArray.map((about, i) => {
                                        return <li key={i}><span>{about}</span></li>;
                                    })}
                                </ul>
                            </div>
                            <div className="product-checkout-section">
                                <div className="product-checkout-price">
                                    <div className="price-amount">{priceFormatter.format(product.price)}</div>
                                    <div className="free-returns-label">& <span className="free-returns-link">FREE Returns</span></div>
                                </div>
                                <div className="product-checkout-delivery">
                                    <div className="free-eta">
                                        <span>FREE delivery:</span><b> {freeEtaString}</b>
                                    </div>
                                    <div className="fastest-eta">
                                        <div>Fastest delivery: <b>{fastEtaString}</b></div>
                                        <div className="time-til-midnight">{OrderWithinString}</div>
                                    </div>
                                </div>
                                <div className="in-stock-section">In Stock.</div>
                                <select className="quantity-select">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                </select>
                                <div className="checkout-buttons">
                                    <button onClick={() => this.addProductToCart(product)} className="add-to-cart-button">Add to Cart</button>
                                </div>
                                <div className="secure-transaction-section">
                                    <i className="fas fa-lock"></i>
                                    <span className="secure-transaction-label">Secure transaction</span>
                                </div>
                                <div className="product-vendor-info">
                                    <div className="vendor-info-label">
                                        <div>Ships from</div>
                                        <div>Sold by</div>
                                    </div>
                                    <div>
                                        <div>Nozama.com</div>
                                        <div>Nozama.com</div>
                                    </div>
                                </div>
                                <div className="return-policy-section">
                                    <div>Return policy: <span className="return-dealine">{returnDeadlineString}</span></div> 
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
                <div className="product-show-row-divider"></div>
                <div className="product-reviews-row">
                    <div className="product-review-right-col">
                        <div className="reviews-heading">Customer reviews</div>
                        {reviewList(reviews).length === 0 ? 'No Reviews' : reviewList(reviews)}
                    </div>
                </div>
            </div>
        );
    }
    
};

export default withRouter(ProductDetail);