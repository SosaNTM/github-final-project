#!/bin/bash
# Simple Interest Calculator
# Calcola l'interesse semplice a partire dall'input dell'utente.
# Formula: SI = (P * R * T) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

# Campo di input 1: capitale (principal)
read -p "Enter the principal amount: " principal

# Campo di input 2: tasso di interesse annuo (rate of interest)
read -p "Enter the rate of interest (% per year): " rate

# Campo di input 3: periodo di tempo in anni (time period)
read -p "Enter the time period (in years): " time

# Calcolo dell'interesse semplice con due cifre decimali
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calcolo dell'importo totale (capitale + interesse)
total=$(echo "scale=2; $principal + $interest" | bc)

# Output dei risultati
echo ""
echo "Principal       : $principal"
echo "Rate of interest: $rate %"
echo "Time period     : $time year(s)"
echo "Simple interest : $interest"
echo "Total amount    : $total"
