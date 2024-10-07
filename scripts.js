const pokemonList = [
    { name: "Bulbasaur", id: 1, image: "004.png" },
    { name: "Charmander", id: 4, image: "001.png" },
    { name: "Squirtle", id: 7, image: "800px-Squirtle.png" },
    // Agrega más Pokémon aquí
];

function displayPokemon(pokemons) {
    const pokemonListElement = document.getElementById('pokemonList');
    pokemonListElement.innerHTML = '';
    pokemons.forEach(pokemon => {
        const pokemonCard = document.createElement('div');
        pokemonCard.className = 'pokemon-card';
        pokemonCard.innerHTML = `
            <img src="${pokemon.image}" alt="${pokemon.name}">
            <h3>${pokemon.name}</h3>
            <p>#${pokemon.id}</p>
        `;
        pokemonListElement.appendChild(pokemonCard);
    });
}

function searchPokemon() {
    const searchBox = document.getElementById('searchBox').value.toLowerCase();
    const filteredPokemon = pokemonList.filter(pokemon => pokemon.name.toLowerCase().includes(searchBox));
    displayPokemon(filteredPokemon);
}

// Mostrar todos los Pokémon al cargar la página
window.onload = () => {
    displayPokemon(pokemonList);
};
