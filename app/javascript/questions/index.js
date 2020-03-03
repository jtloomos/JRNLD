const userQuestions = document.querySelectorAll('.list-group-item.list-group-item-action')

userQuestions.forEach((question) => {
  question.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("active");
  });
});
