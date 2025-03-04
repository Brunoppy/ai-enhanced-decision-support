-- SQL Script for AI-Enhanced Decision Support 
CREATE TABLE decision_models (
    id SERIAL PRIMARY KEY,
    model_name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE decision_logs (
    id SERIAL PRIMARY KEY,
    model_id INT REFERENCES decision_models(id),
    decision_text TEXT NOT NULL,
    confidence_score DECIMAL(5,2) CHECK (confidence_score BETWEEN 0 AND 1),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
