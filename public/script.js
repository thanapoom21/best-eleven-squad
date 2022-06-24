fetch("/players")
  .then((response) => response.json())
  .then((data) => {
    data.forEach((player) => {
      // Select the <template> we created in index.html
      const cardTemplate = document.querySelector("template");
      const cardWrapper = document.getElementById("card-wrapper");

      // Clone a copy of the template we can insert in the DOM as a real visible node
      const card = cardTemplate.content.cloneNode(true);
      const imageSrc = card.querySelector('img');

      // Update the content of the cloned template with the player data we queried from the backend
      imageSrc.src = player.imgurl;
      card.getElementById("player-name").innerText = player.name;
      card.getElementById("position").innerText = player.position;

      // Append the card as a child with the player data to the <body> element on our page
      cardWrapper.appendChild(card);
    });
  });
