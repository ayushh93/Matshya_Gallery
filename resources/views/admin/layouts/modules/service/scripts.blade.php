<script>
    function readURL(input) {
    if(input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#image_image').hide();
            $('#image_image_placeholder')
                .attr('src',e.target.result)
                .width(200)
            };
        reader.readAsDataURL(input.files[0]);
        }
    }
</script>