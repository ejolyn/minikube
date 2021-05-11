<?php

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'admin' );
define( 'DB_PASSWORD', '1234' );
define( 'DB_HOST', 'mysql-svc:3306' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define( 'FS_METHOD', 'direct' );

define( 'AUTH_KEY',         '`:_p-RJ9x1yiM#>di/:pIRk|{.>X%ZE2/K6~]z!F__{pg1$ym377)K?~?Lb6qK``' );
define( 'SECURE_AUTH_KEY',  '(t5%%kdL$tK?T5sKe0=or%6X>Fz9B?c/ccs`x38%N/Dq}0{JU+jTN4qgKt+T%XL&' );
define( 'LOGGED_IN_KEY',    'Pt8Qj*/=yCVa,2~Tp_4l*k,w:j!6.dNdq VY<5{B<v5[KcZBvJv4>q-2HNR2-qb!' );
define( 'NONCE_KEY',        'V)PFR1Q_R?1,VYG7Q~_9@|,BV}0bP/@J{2l91_Co0lM-Z{]U6L`0,7C0[cf !orQ' );
define( 'AUTH_SALT',        '&9X,#7L_[itNT?0tdqyyJB4Q@-]:]9Xv?GBD]ZzmV]Ej?b}byzp/x+kH`B:Gz`/e' );
define( 'SECURE_AUTH_SALT', '|VTn`0_NOa!oO%K0=>{Ly/xU7?n/,dPhz3!MMcF9iJbr>/A 5[jZ~dqnL^&g/Keb' );
define( 'LOGGED_IN_SALT',   '5c!I@^p#~ evhQ4V6Y_w5hx%Eu@nyVA<c=Cf-h6k{&$wrH??^vkOk]emJE =Xl4D' );
define( 'NONCE_SALT',       '^QXOYaKU8:> VuEa-X6t2rR~#.W#84g.`cS5#oa{jBHo`qra[-JhujxHUPD@w~aY' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';