// Search functionality
document.addEventListener('DOMContentLoaded', function() {
    const searchInput = document.getElementById('search');
    const commands = document.querySelectorAll('.command');

    searchInput.addEventListener('input', function() {
        const query = this.value.toLowerCase();

        commands.forEach(command => {
            const text = command.textContent.toLowerCase();
            if (text.includes(query)) {
                command.style.display = 'block';
            } else {
                command.style.display = 'none';
            }
        });
    });

    // Toggle interview questions
    const toggleButton = document.getElementById('toggle-interview');
    const interviewContent = document.getElementById('interview-content');

    toggleButton.addEventListener('click', function() {
        if (interviewContent.style.display === 'none') {
            interviewContent.style.display = 'block';
            toggleButton.textContent = 'Hide Interview Questions';
        } else {
            interviewContent.style.display = 'none';
            toggleButton.textContent = 'Show Interview Questions';
        }
    });
});
