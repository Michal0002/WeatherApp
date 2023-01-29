function showLoadingScreen() {
    document.getElementById("loading-screen").style.display = "block";
    setTimeout(function() {
        document.getElementById("loading-screen").style.display = "none";
    }, 3000);
}