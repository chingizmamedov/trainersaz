<?php
/**
 * trainers functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package trainers
 */
add_action('wp_default_scripts', function ($scripts) {
	if (!empty($scripts->registered['jquery'])) {
			$scripts->registered['jquery']->deps = array_diff($scripts->registered['jquery']->deps, ['jquery-migrate']);
	}
});
/**
 * Enqueue scripts and styles.
 */
function trainers_scripts() {

	wp_enqueue_style( 'trainers-style', get_stylesheet_uri() );
	wp_enqueue_style( 'trainers-slick-style', get_template_directory_uri() . '/assets/css/slick.css' );
	wp_enqueue_style( 'trainers-slick_theme-style', get_template_directory_uri() . '/assets/css/slick-theme.css' );
	wp_enqueue_style( 'trainers-main-style', get_template_directory_uri() . '/assets/css/style.css' );

}
add_action( 'wp_enqueue_scripts', 'trainers_scripts' );

add_action('wp_footer', 'theme_scripts');

function theme_scripts () {

	wp_enqueue_script('jquery');
	wp_enqueue_script( 'slick-js',  get_theme_file_uri( '/assets/js/slick.js' ) );
	wp_enqueue_script( 'mainjs',  get_theme_file_uri( '/assets/js/script.js' ) );
	// wp_enqueue_script( 'mainjs',  'https://maps.googleapis.com/maps/api/js?key=AIzaSyCCRV1bAttcfhchzGmawn3m_UbXd3Mi72o' );

}


// Регистрация меню

add_action( 'after_setup_theme', function(){
	register_nav_menus( [
		'header_top_menu' => 'Верхнее меню в шапке',
		'header_bottom_menu' => 'Нижнее меню в шапке',
		'footer_main_menu' => 'Главное меню в подвале',
		'footer_about_menu' => 'Меню о подолнительных информациях в подвале',
		'footer_info_menu' => 'Меню с информацией в подвале',
		'mobile_menu' => 'Меню для мобильного экрана'
	] );
} );


// Регистрация видов постов
add_action( 'init', 'register_post_types' );
function register_post_types(){
	register_post_type('courses', array(
		'label'  => null,
		'labels' => array(
			'name'               => 'Курсы', // основное название для типа записи
			'singular_name'      => 'Курс', // название для одной записи этого типа
			'add_new'            => 'Добавить курс', // для добавления новой записи
			'add_new_item'       => 'Добавление курса', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование курса', // для редактирования типа записи
			'new_item'           => 'Новый курс', // текст новой записи
			'view_item'          => 'Смотреть курса', // для просмотра записи этого типа.
			'search_items'       => 'Искать курса', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'parent_item_colon'  => '', // для родителей (у древовидных типов)
			'menu_name'          => 'Курсы', // название меню
		),
		'description'         => 'Список всех курсов',
		'public'              => true,
		 'publicly_queryable'  => true, // зависит от public
		 'exclude_from_search' => true, // зависит от public
		// 'show_ui'             => null, // зависит от public
		 'show_in_nav_menus'   => true, // зависит от public
		'show_in_menu'        => null, // показывать ли в меню адмнки
		// 'show_in_admin_bar'   => null, // зависит от show_in_menu
		'show_in_rest'        => null, // добавить в REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 4,
		'menu_icon'           => 'dashicons-book', 
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
		//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor', 'title', 'editor', 'thumbnail', 'custom-fields','post-formats' ], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => ['categories'],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	) );
	register_post_type('scool', array(
		'label'  => null,
		'labels' => array(
			'name'               => 'Заведения', // основное название для типа записи
			'singular_name'      => 'Заведение', // название для одной записи этого типа
			'add_new'            => 'Добавить заведение', // для добавления новой записи
			'add_new_item'       => 'Добавление заведения', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование заведения', // для редактирования типа записи
			'new_item'           => 'Новое заведение', // текст новой записи
			'view_item'          => 'Смотреть заведение', // для просмотра записи этого типа.
			'search_items'       => 'Искать заведение', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'parent_item_colon'  => '', // для родителей (у древовидных типов)
			'menu_name'          => 'Заведения', // название меню
		),
		'description'         => 'Список всех курсов',
		'public'              => true,
		 'publicly_queryable'  => true, // зависит от public
		 'exclude_from_search' => true, // зависит от public
		// 'show_ui'             => null, // зависит от public
		 'show_in_nav_menus'   => true, // зависит от public
		'show_in_menu'        => null, // показывать ли в меню адмнки
		// 'show_in_admin_bar'   => null, // зависит от show_in_menu
		'show_in_rest'        => null, // добавить в REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 4,
		'menu_icon'           => 'dashicons-building', 
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
		//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor', 'title', 'editor', 'thumbnail', 'custom-fields','post-formats' ], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	) );
	register_post_type('articles', array(
		'label'  => null,
		'labels' => array(
			'name'               => 'Статья', // основное название для типа записи
			'singular_name'      => 'Статья', // название для одной записи этого типа
			'add_new'            => 'Добавить статью', // для добавления новой записи
			'add_new_item'       => 'Добавление статьи', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование статьи', // для редактирования типа записи
			'new_item'           => 'Новое статья', // текст новой записи
			'view_item'          => 'Смотреть статью', // для просмотра записи этого типа.
			'search_items'       => 'Искать статью', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'parent_item_colon'  => '', // для родителей (у древовидных типов)
			'menu_name'          => 'Статьи', // название меню
		),
		'description'         => 'Список всех статей',
		'public'              => true,
		 'publicly_queryable'  => true, // зависит от public
		 'exclude_from_search' => true, // зависит от public
		// 'show_ui'             => null, // зависит от public
		 'show_in_nav_menus'   => true, // зависит от public
		'show_in_menu'        => null, // показывать ли в меню адмнки
		// 'show_in_admin_bar'   => null, // зависит от show_in_menu
		'show_in_rest'        => null, // добавить в REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 4,
		'menu_icon'           => 'dashicons-format-quote', 
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
		//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor', 'title', 'editor', 'thumbnail', 'custom-fields','post-formats' ], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	) );
	register_post_type('teachers', array(
		'label'  => null,
		'labels' => array(
			'name'               => 'Учителя', // основное название для типа записи
			'singular_name'      => 'Учитель', // название для одной записи этого типа
			'add_new'            => 'Добавить учителя', // для добавления новой записи
			'add_new_item'       => 'Добавление учителя', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование учителя', // для редактирования типа записи
			'new_item'           => 'Новый учитель', // текст новой записи
			'view_item'          => 'Смотреть учителя', // для просмотра записи этого типа.
			'search_items'       => 'Искать учителя', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'parent_item_colon'  => '', // для родителей (у древовидных типов)
			'menu_name'          => 'Учителя', // название меню
		),
		'description'         => 'Список всех курсов',
		'public'              => true,
		 'publicly_queryable'  => true, // зависит от public
		 'exclude_from_search' => true, // зависит от public
		// 'show_ui'             => null, // зависит от public
		 'show_in_nav_menus'   => true, // зависит от public
		'show_in_menu'        => null, // показывать ли в меню адмнки
		// 'show_in_admin_bar'   => null, // зависит от show_in_menu
		'show_in_rest'        => null, // добавить в REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 4,
		'menu_icon'           => 'dashicons-businessman', 
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
		//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor', 'title', 'editor', 'thumbnail', 'custom-fields','post-formats' ], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => ['categories'],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	) );

	// список параметров: wp-kama.ru/function/get_taxonomy_labels
	register_taxonomy( 'categories', [ 'post', 'teachers', 'courses' ], [ 
		'label'                 => '', // определяется параметром $labels->name
		'labels'                => [
			'name'              => 'Категории',
			'singular_name'     => 'Категория',
			'search_items'      => 'Поиск Категории',
			'all_items'         => 'Все категории',
			'view_item '        => 'View Genre',
			'parent_item'       => 'Parent Genre',
			'parent_item_colon' => 'Parent Genre:',
			'edit_item'         => 'Edit Genre',
			'update_item'       => 'Update Genre',
			'add_new_item'      => 'Добавить Категорию',
			'new_item_name'     => 'Название Категории',
			'menu_name'         => 'Категории',
		],
		'description'           => '', // описание таксономии
		'public'                => true,
		// 'publicly_queryable'    => null, // равен аргументу public
		// 'show_in_nav_menus'     => true, // равен аргументу public
		// 'show_ui'               => true, // равен аргументу public
		// 'show_in_menu'          => true, // равен аргументу show_ui
		// 'show_tagcloud'         => true, // равен аргументу show_ui
		// 'show_in_quick_edit'    => null, // равен аргументу show_ui
		'hierarchical'          => false,

		'rewrite'               => true,
		//'query_var'             => $taxonomy, // название параметра запроса
		'capabilities'          => array(),
		'meta_box_cb'           => null, // html метабокса. callback: `post_categories_meta_box` или `post_tags_meta_box`. false — метабокс отключен.
		'show_admin_column'     => false, // авто-создание колонки таксы в таблице ассоциированного типа записи. (с версии 3.5)
		'show_in_rest'          => null, // добавить в REST API
		'rest_base'             => null, // $taxonomy
		// '_builtin'              => false,
		//'update_count_callback' => '_update_post_term_count',
	] );

	function post_tag_for_pages(){
		register_taxonomy_for_object_type( 'categories', array( 'exclude_from_search' => false ));
	}
}

/**
 * Возможность загружать изображения для терминов (элементов таксономий: категории, метки).
 *
 * Пример получения ID и URL картинки термина:
 *     $image_id = get_term_meta( $term_id, '_thumbnail_id', 1 );
 *     $image_url = wp_get_attachment_image_url( $image_id, 'thumbnail' );
 *
 * @author: Kama http://wp-kama.ru
 *
 * @version 3.0
 */
if( is_admin() && ! class_exists('Term_Meta_Image') ){

	// init
	//add_action('current_screen', 'Term_Meta_Image_init');
	add_action( 'admin_init', 'Term_Meta_Image_init' );
	function Term_Meta_Image_init(){
		$GLOBALS['Term_Meta_Image'] = new Term_Meta_Image();
	}

	class Term_Meta_Image {

		// для каких таксономий включить код. По умолчанию для всех публичных
		static $taxes = []; // пример: array('category', 'post_tag');

		// название мета ключа
		static $meta_key = '_thumbnail_id';
		static $attach_term_meta_key = 'img_term';

		// URL пустой картинки
		static $add_img_url = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkAQMAAABKLAcXAAAABlBMVEUAAAC7u7s37rVJAAAAAXRSTlMAQObYZgAAACJJREFUOMtjGAV0BvL/G0YMr/4/CDwY0rzBFJ704o0CWgMAvyaRh+c6m54AAAAASUVORK5CYII=';

		public function __construct(){
			// once
			if( isset($GLOBALS['Term_Meta_Image']) )
				return $GLOBALS['Term_Meta_Image'];

			$taxes = self::$taxes ? self::$taxes : get_taxonomies( [ 'public' =>true ], 'names' );

			foreach( $taxes as $taxname ){
				add_action( "{$taxname}_add_form_fields",   [ $this, 'add_term_image' ],     10, 2 );
				add_action( "{$taxname}_edit_form_fields",  [ $this, 'update_term_image' ],  10, 2 );
				add_action( "created_{$taxname}",           [ $this, 'save_term_image' ],    10, 2 );
				add_action( "edited_{$taxname}",            [ $this, 'updated_term_image' ], 10, 2 );

				add_filter( "manage_edit-{$taxname}_columns",  [ $this, 'add_image_column' ] );
				add_filter( "manage_{$taxname}_custom_column", [ $this, 'fill_image_column' ], 10, 3 );
			}
		}

		## поля при создании термина
		public function add_term_image( $taxonomy ){
			wp_enqueue_media(); // подключим стили медиа, если их нет

			add_action('admin_print_footer_scripts', [ $this, 'add_script' ], 99 );
			$this->css();
			?>
			<div class="form-field term-group">
				<label><?php _e('Image', 'default'); ?></label>
				<div class="term__image__wrapper">
					<a class="termeta_img_button" href="#">
						<img src="<?php echo self::$add_img_url ?>" alt="">
					</a>
					<input type="button" class="button button-secondary termeta_img_remove" value="<?php _e( 'Remove', 'default' ); ?>" />
				</div>

				<input type="hidden" id="term_imgid" name="term_imgid" value="">
			</div>
			<?php
		}

		## поля при редактировании термина
		public function update_term_image( $term, $taxonomy ){
			wp_enqueue_media(); // подключим стили медиа, если их нет

			add_action('admin_print_footer_scripts', [ $this, 'add_script' ], 99 );

			$image_id = get_term_meta( $term->term_id, self::$meta_key, true );
			$image_url = $image_id ? wp_get_attachment_image_url( $image_id, 'thumbnail' ) : self::$add_img_url;
			$this->css();
			?>
			<tr class="form-field term-group-wrap">
				<th scope="row"><?php _e( 'Image', 'default' ); ?></th>
				<td>
					<div class="term__image__wrapper">
						<a class="termeta_img_button" href="#">
							<?php echo '<img src="'. $image_url .'" alt="">'; ?>
						</a>
						<input type="button" class="button button-secondary termeta_img_remove" value="<?php _e( 'Remove', 'default' ); ?>" />
					</div>

					<input type="hidden" id="term_imgid" name="term_imgid" value="<?php echo $image_id; ?>">
				</td>
			</tr>
			<?php
		}

		public function css(){
			?>
			<style>
				.termeta_img_button{ display:inline-block; margin-right:1em; }
				.termeta_img_button img{ display:block; float:left; margin:0; padding:0; min-width:100px; max-width:150px; height:auto; background:rgba(0,0,0,.07); }
				.termeta_img_button:hover img{ opacity:.8; }
				.termeta_img_button:after{ content:''; display:table; clear:both; }
			</style>
			<?php
		}

		## Add script
		public function add_script(){
			// выходим если не на нужной странице таксономии
			//$cs = get_current_screen();
			//if( ! in_array($cs->base, array('edit-tags','term')) || ! in_array($cs->taxonomy, (array) $this->for_taxes) )
			//  return;

			$title = __('Featured Image', 'default');
			$button_txt = __('Set featured image', 'default');
			?>
			<script>
				jQuery(document).ready(function($){
					var frame,
						$imgwrap = $('.term__image__wrapper'),
						$imgid   = $('#term_imgid');

					// добавление
					$('.termeta_img_button').click( function(ev){
						ev.preventDefault();

						if( frame ){ frame.open(); return; }

						// задаем media frame
						frame = wp.media.frames.questImgAdd = wp.media({
							states: [
								new wp.media.controller.Library({
									title:    '<?php echo $title ?>',
									library:   wp.media.query({ type: 'image' }),
									multiple: false,
									//date:   false
								})
							],
							button: {
								text: '<?php echo $button_txt ?>', // Set the text of the button.
							}
						});

						// выбор
						frame.on('select', function(){
							var selected = frame.state().get('selection').first().toJSON();
							if( selected ){
								$imgid.val( selected.id );
								$imgwrap.find('img').attr('src', selected.sizes.thumbnail.url );
							}
						} );

						// открываем
						frame.on('open', function(){
							if( $imgid.val() ) frame.state().get('selection').add( wp.media.attachment( $imgid.val() ) );
						});

						frame.open();
					});

					// удаление
					$('.termeta_img_remove').click(function(){
						$imgid.val('');
						$imgwrap.find('img').attr('src','<?php echo self::$add_img_url ?>');
					});
				});
			</script>

			<?php
		}

		## Добавляет колонку картинки в таблицу терминов
		public function add_image_column( $columns ){
			// fix column width
			add_action( 'admin_notices', function(){
				echo '<style>.column-image{ width:50px; text-align:center; }</style>';
			});

			// column without name
			return array_slice( $columns, 0, 1 ) + [ 'image' =>'' ] + $columns;
		}

		public function fill_image_column( $string, $column_name, $term_id ){

			if( 'image' === $column_name && $image_id = get_term_meta( $term_id, self::$meta_key, 1 ) ){
				$string = '<img src="'. wp_get_attachment_image_url( $image_id, 'thumbnail' ) .'" width="50" height="50" alt="" style="border-radius:4px;" />';
			}

			return $string;
		}

		## Save the form field
		public function save_term_image( $term_id, $tt_id ){
			if( isset($_POST['term_imgid']) && $attach_id = (int) $_POST['term_imgid'] ){
				update_term_meta( $term_id,   self::$meta_key,             $attach_id );
				update_post_meta( $attach_id, self::$attach_term_meta_key, $term_id );
			}
		}

		## Update the form field value
		public function updated_term_image( $term_id, $tt_id ){
			if( ! isset($_POST['term_imgid']) )
				return;

			$cur_term_attach_id = (int) get_term_meta( $term_id, self::$meta_key, 1 );

			if( $attach_id = (int) $_POST['term_imgid'] ){
				update_term_meta( $term_id,   self::$meta_key,             $attach_id );
				update_post_meta( $attach_id, self::$attach_term_meta_key, $term_id );

				if( $cur_term_attach_id != $attach_id )
					wp_delete_attachment( $cur_term_attach_id );
			}
			else {
				if( $cur_term_attach_id )
					wp_delete_attachment( $cur_term_attach_id );

				delete_term_meta( $term_id, self::$meta_key );
			}
		}

	}

}
/**
 * 3.0 - 2019-04-24 - Баг: колонка заполнялась без проверки имени колонки.
 * 2.9 Добавил метаполе для вложений (img_term), где хранится ID термина к которому прикреплено вложение.
 *     Добавил физическое удаление картинки (файла вложения) при удалении его у термина.
 * 2.8 Исправил ошибку удаления картинки.
 */


 // acf google map

 function my_acf_google_map_api( $api ){
	
	$api['key'] = 'AIzaSyCCRV1bAttcfhchzGmawn3m_UbXd3Mi72o';
	
	return $api;
	
}

add_filter('acf/fields/google_map/api', 'my_acf_google_map_api');

add_action( 'after_setup_theme', function() {
	add_theme_support( 'pageviews' );
});