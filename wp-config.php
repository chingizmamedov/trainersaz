<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'trainers_db' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'root' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

define( 'WPCF7_AUTOP', false );
/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'lnjnP/oZz{GhZq;/H_Q nVunY}]OR{HS]tf EN#F9P|,C2O>|4VJ*9[7wM7oSBGm' );
define( 'SECURE_AUTH_KEY',  '&uelvXo!A;87waB{1_#,?Z[,aNf`r/DUzQI0=Zixhj[*r,%l^Je=@E(g`_+e3DU6' );
define( 'LOGGED_IN_KEY',    '.JPHF3K](S $GOm+w[d<N^CP:j/EFVaNkMhN6AW{rH{E>>A&mG 5i.-R|N~,Ngx.' );
define( 'NONCE_KEY',        'QYX,C|x:U{|G9pTC+vbl/}+t+aTK7d-OHa-GeIsCc+`Mh{FM=bV.^9-K;:v4=gu0' );
define( 'AUTH_SALT',        '64vc 9DR>y8.Hv4.+f^*vte?MV=zGH=#7kW}cydQ?8;nJd/}}G;SNXN_F5t]WJ(}' );
define( 'SECURE_AUTH_SALT', 'EXa605$@na,vOX}.qAdy-R%{z)%z%T)1O8Up=1Nkur$x?K~Sh1<#q_uGEr6e PGn' );
define( 'LOGGED_IN_SALT',   'D6OniNB4NwUS[eQQyeUBxk[%.Ql~Ij48wJ;K#r()9(n<X@=Cy#3^5KY@Aq V/#%A' );
define( 'NONCE_SALT',       '`R3^|zQ`Gn_4l;OZ*QL]TB]aa&hlsi){ y+539v0Y7sqc}CBir8%qu<#T0:e}50m' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
