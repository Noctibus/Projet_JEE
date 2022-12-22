        <footer>
            <%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
            <div>
                <img id="marvel" src="marvel.png" />
            </div>
            <div id="names">
                Concepteurs: Debet Stanislas, Coyla Timoteï, Morales Raphaël & Godet Mélissa
            </div>
            <div>
                <p><a href="contact">Nous contacter</a></p>
            </div>
        </footer>

        <script>
            function mouseOver(id){
                let i = id.substring(4);
                for(let j=1; j<=5; j++){
                    if (j<=i) {
                        document.getElementById("star"+j).style.color="red";
                    } else {
                        document.getElementById("star"+j).style.color="white";
                    }
                }
            }

            function mouseOut(){
                let end = <c:out value="${rate}"/>;
                for(let j=1; j<=5; j++){
                    if (j<=end) {
                        document.getElementById("star"+j).style.color="red";
                    } else {
                        document.getElementById("star"+j).style.color="white";
                    }
                }
            }
        </script>

    </div>
</body>