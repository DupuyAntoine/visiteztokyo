										</div>

								</div>

            </div>

        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

	<footer class="blog-footer">

      <p style ="text-align : center">{$website_title} &copy; 2015</p>
    </footer>

    {include file="partials/debug.tpl"}

  <script src="{$JS_ROOT}jquery.js"></script>
	<script src="{$JS_ROOT}jquery.min.js"></script>
	<script src="{$JS_ROOT}bootstrap.min.js"></script>
	<script>var HTTP_ROOT = '{$HTTP_ROOT}';</script>
	<script src="{$JS_ROOT}main.js"></script>

	<script>
	/*
	$.getScript('//cdn.jsdelivr.net/isotope/1.5.25/jquery.isotope.min.js', function(){
		$('.items').isotope({
			itemSelector : '.item'
		});
	});
	*/
	$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
  });
	</script>
</body>
</html>
