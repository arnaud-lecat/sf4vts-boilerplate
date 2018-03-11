<template>
    <div id="CookieLaw">
        <cookie-law>
            <message>En poursuivant votre navigation sur notre site vous acceptez l'utilisation de cookies, pour vous proposer des contenus personnalisés en fonction de vos centres d'intérêt et mesurer la fréquentation de nos services, pour en savoir plus et paramétrer les cookies, cliquez ici</message>
        </cookie-law>
    </div>
</template>
<script>
  import CookieLaw from 'vue-cookie-law'
  export default {
    components: { CookieLaw }
  }
</script>
