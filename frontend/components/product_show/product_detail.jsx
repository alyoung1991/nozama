import React from 'react';
import { Link } from 'react-router-dom';

const ProductDetail = ({product}) => {
    if(!product) return null;
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
            <div className="return-link-row">
                <Link className="nav-back-button" to="/">
                    <div>Back to results</div>
                </Link>
            </div>
            <div className="product-main-row">
                <div className="product-main-section">
                    <div className="product-gallery-section">
                        <img className="product-show-image" src={product.picture_url} alt={product.name} />
                    </div>
                    <div className="product-info-section">
                        <div className="product-show-title">{product.name}</div>
                        <div className="product-show-rating">RATING PLACEHOLDER</div>
                        <div className="product-show-price">Price: 
                            <span className="price-amount">{priceFormatter.format(product.price)}</span>
                            <span className="free-returns-label">& FREE Returns</span>
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
                            <button className="add-to-cart-button">Add to Cart</button>
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
    );
    
};

export default ProductDetail;