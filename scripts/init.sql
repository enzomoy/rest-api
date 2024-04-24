CREATE DATABASE rest_api;
USE rest_api;

-- Création de la table des utilisateurs
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pseudo VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL ,
    role VARCHAR(255) NOT NULL,
    token varchar(255) NOT NULL,
    );

-- Création de la table des appartements
CREATE TABLE appartements (
    id INT PRIMARY KEY AUTO_INCREMENT,
    superficie FLOAT NOT NULL,
    capacite INT NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    disponibilite BOOLEAN NOT NULL,
    prix_nuit DECIMAL(10, 2) NOT NULL
    client_id INT NOT NULL,
);

-- Création de la table des réservations
CREATE TABLE reservations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    client_id INT NOT NULL,
    appartement_id INT NOT NULL,
    FOREIGN KEY (client_id) REFERENCES user(id),
    FOREIGN KEY (appartement_id) REFERENCES appartements(id)
);