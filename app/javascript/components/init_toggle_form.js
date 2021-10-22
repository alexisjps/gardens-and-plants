const initToggleForm = () => {
  const button = document.querySelector('.toggle-form');
  const form = document.querySelector('#new_plant');
  if (button) {
    button.addEventListener('click', () => {
      form.classList.toggle('d-none');
    });
  }
  console.log(button)
  console.log(form)
}

export { initToggleForm };
