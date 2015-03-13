(function () {
    var root = this;
    var $file_input = document.querySelector("input#file");
    var $holder = document.querySelector("#notebook-holder");

    var render_notebook = function (ipynb) {
        var notebook = root.notebook = nb.parse(ipynb);
        while ($holder.hasChildNodes()) {
            $holder.removeChild($holder.lastChild);
        }
        $holder.appendChild(notebook.render());
        Prism.highlightAll();
    };

    $file_input.onchange = function (e) {
        var reader = new FileReader();
        reader.onload = function (e) {
            var parsed = JSON.parse(this.result);
            render_notebook(parsed);
        };
        reader.readAsText(this.files[0]);
    };
}).call(this);
