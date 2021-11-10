import React, { useState } from 'react';
import { FaStar } from 'react-icons/fa';

const StarRating = ({updateRating}) => {
    const [rating, setRating] = useState(null);
    const [hover, setHover] = useState(null);

    const updateStars = (ratingValue) => {
        setRating(ratingValue);
        updateRating(ratingValue);
    }

    return (
        <div>
            {[...Array(5)].map((star, i) => {
                const ratingValue = i + 1;

                return (
                    <label key={i}>
                        <input 
                            type="radio" 
                            name="rating" 
                            value={ratingValue}
                            onClick={() => updateStars(ratingValue)}
                        />
                        <FaStar 
                            className="star" 
                            color={ratingValue <= ( hover || rating ) ? "#ffa41b" : "#c9c9c9"} 
                            size={37} 
                            onMouseEnter={() => setHover(ratingValue)}
                            onMouseLeave={() => setHover(null)}
                        />
                    </label>
                );
            })}
        </div>
    );
};

export default StarRating;