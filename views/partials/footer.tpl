										</div>

								</div>

            </div>

        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

	<footer class="blog-footer">
			<a href="{$IMG_ROOT}1438865519_578_conditions_generales_d_utilisation_d_un_site_internet.pdf">CGU (PDF)</a>
      <p style ="text-align : center">{$website_title} &copy; {date("Y")}</p>
    </footer>

    {include file="partials/debug.tpl"}

  <script src="{$JS_ROOT}jquery.js"></script>
	<script src="{$JS_ROOT}jquery.min.js"></script>
	<script src="{$JS_ROOT}bootstrap.min.js"></script>
	<script>var HTTP_ROOT = '{$HTTP_ROOT}';</script>
	<script src="{$JS_ROOT}main.js"></script>
  <script src="{$JS_ROOT}jquery.scrollTo-2.1.1\jquery.scrollTo.min.js"></script>

	<script>
  {literal}
/*
	$.getScript('//cdn.jsdelivr.net/isotope/1.5.25/jquery.isotope.min.js', function(){
		$('.thumbnails').isotope({
			itemSelector : '.thumbnail'
		});
	});
*/
	$("#menu-toggle").click(function(e) {
    e.preventDefault();
		$("#wrapper").toggleClass("toggled");
		$(".logo").toggle("hidden", false);
    $(".glyphicon-menu-hamburger").toggle();
    $(this).toggleClass('open');
    $('html, body').scrollTo(0, 200);
  });

	/*
	$("#menu-toggle").click(function(e) {
    e.preventDefault();
		$("#wrapper").toggleClass("toggled");
    if (true) {
    	$(".logo").toggle("hidden", false);
    	$(".glyphicons-left-arrow").toggle("hidden", true);
    };
    else{
    	$(".logo").toggle("hidden", true);
    	$(".glyphicons-left-arrow").toggle("hidden", false);
		};
  });
  */
  {/literal}
	</script>
</body>
</html>
