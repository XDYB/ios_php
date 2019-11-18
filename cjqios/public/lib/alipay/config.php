<?php
# @Author: JokenLiu <Jason>
# @Date:   2017-05-22 10:40:40
# @Email:  190646521@qq.com
# @Project: Demon
# @Filename: config.php
# @Last modified by:   Jason
# @Last modified time: 2018-02-04 17:08:49
# @License: 北京乐维世纪网络科技有限公司开发者协议
# @Copyright: DemonLive



$config = array (
		//应用ID,您的APPID。
		'app_id' => "2016101600699169",

		//商户私钥
		/*
		'merchant_private_key' => "-----BEGIN PRIVATE KEY-----MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDfASpjCfFg7He4kTVZ43hdyjMLHRwdlgTq4pV3PVpMxh6N5+x+JaODc/OewC0BhjNhxUAJPv81YL5vafqEit4lAdArOwnWOlwWptttyfKwYBRkaGBSTQyVEg1y5EakGY937YJ1AkLquIyabS5fYS9u/R5RRmPAbwy2lhnmJhffynMZkPc6n/cW9JUbKA3sbTbNDq2YQKShtrDtz06KuIqalAjM2XLXL8im1gqM9QE+c85LoCkZkevJtFgCgYRDmNwUctfYr+1TPfyow0QpXRQEzpT7RrdpJA1nMSmrRXYSVwSCLbfZtZ0xrWtGKCT++r2fyBlVHvzll8jj5Z0aU6tdAgMBAAECggEAFjWoggqYdp22YrRbiuNDtpuPr9irVyr8vGPqnOCIYMMOgfWKMRoQieP/bF0ZXmB+N4uMkB8tDaTf8nqsj4zBCRCAKf4MQcC4MS1XBz0opXY8Ma/PgALacPJGUp33hxpgloIaDws1nOjaX/rltmwYbEZbQZ7wCldE/d4/IBPFJu10IXRRG8BryppRx7DpVLlF2rbbTUshNxuo/R3mfA2qUEJDxKltP6Sw8cqLeQuT32UU71lyVND/DTaGst3kuUPof7sesPZ73Log2Oyiu2S5C+9k3P0bKuOJKma56p5IR78mJyHTl75VzkmecG7pmP6e/CcSGIL3DEXMA3IYdPgyBQKBgQD2hR6D5jpyb6RIYh0vu046i6XXqUP5Sn6ElmPAMDKKEoGnB+C0Sn6QNklLsTXsb6LMT2og2buHBeX2jBEul2Zkr5QFxVkCntbAFSGhqrrAAJaOYkwZk8hgW9KdX8oYe0JIicpWe3gtEzE2ZwEXrOiQSiiwFhEcvmHO7GWJhye58wKBgQDnlIwUVQDaoGgDiOPrgJmHzopenYGweCuoXoYL3WZ+H1PDby+ogRXDB7rwNyGH7LSFFh8jp68FLGNFDPzXw8inzsiu2el+wiGYeJa0kyETUGjJR3AycdM4tyAYOW6fXSI6/5ELkWNN+MbHFo8bIVldgfDncFp+KwV8uO/60s2JbwKBgQCl4zx+m7225iORxdxIE233/aMS9cdVCOkMRbtIR+aqfPucL7Po/rweRTmbYtubiB/wBnyvMHV9zd1KxESHqr/vfytHmt5j4gk25sFj7eSPcZXeqIz3JThQh1m6Jwxy3vbioz5yZdGf22thZX0ZtnQlLJImtCK9yes9eFx3aGi2OwKBgElubACid5Pbmz/Lr2HktEpA7tVTomT/pfBMkLrAaJiDfH8TCYyn6euezuMOyD4ei5tLyXH34OKGEbA6jw4n0b+MLUxsYsLD8f0z962onatPKvrwAR6twylPwAiOZYp48Lq+gRKm9lMqGHXWrGgQ6hJheq8YjElHgQTsa4QgRfZXAoGBAIv57Blxm7K3h8B03p1YsbsO66V8F08LKa5dHrnwqtiYe2uOPns9uOPzABjgr+1FmcICKmC3bQIIa/EsA+MU7AZ7YEJlJfwDkXtCiKW9SGn3NMK73/zgf0OuLGVI8YsACrDVLSMttOtsfIbuHUS6L9s/unecQxtd8z0EkXS8MU7z-----END PRIVATE KEY-----",
		*/
		'merchant_private_key' => "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCEgsouEY/ZjFtk2DM0ViXktBjUW1CViWLFWa8YyrlgqLCw+E6wLXDu0Oqs5QETa1rGRj6uwDquEdGomgtjpW0k3Dp4hxOSXe8lS6SmwTvEBf9Yhgr63PX5OGa3oC8tb8j0di1qqeXCREOokkSVY4rTeK4AM3p/DSDD3xsD4AetqfJl9ga8h001h/+WSxSa1/k+3WFFNCbEIRHhIN1+RWLU/tlxxaJveuEp/bwqDCBB1TRyoEkM6Ja3cwM2eF3rHB4Oc2KNRL9mgn+YG5s+aoHDtZGUomgmHW6tKFUwC4PGwpSZEfMmp7kAoblc5RgmRFy1kBQZg5imnOvYGnnFulP7AgMBAAECggEAGE45MYwNG7VQCkZR1ha7KqESMNlzBYrGsDZMFLsSl7U5e6yAGnarUVLGyOHUebBmXRoDY2BlIwqnr0paLnPoeitfGj6Ei4NpWyjt0Zx+Du2esakcmHkxMP50cNgT7zyi2pxWpkr1ltWYp3H03IX+r91h5S2MGYPZ77Obq/FK10KhloYPAGfsCfJ9YZPhb3SuZRaEeCLONsxZf5jMquGRbHgWKc/9iFsf1qpeXhFwhH5ehLuyE+lH8ETlmM2kBRTDVUQY64fkgOfwY+m57ShafxkobVfXkeCA7h/e/pfw8HIyZdHzJSHnFvZjKu/YO2dTEp6LkMLtDh7tl8emUA+HOQKBgQDWea5+38DtFxURBZsHpH7WA43u7ZMghsU+HLIEDmr623ZVNvG0GleN82CtAKA1o9FBszMwRQbkIDx0B+mb8RcBKrxEj+6sx6HEAE70EHrmogyc9qZPAwglbIgeay3gMgzLIjMjj++LZCt+pXT4WDT8yXUqTQF3MDfFi47Z8wip7wKBgQCeKplnJEnpat6IrvGe9gFF8v2i9/YSyp/yb05o6lJhtoDxZUSEFEGVJoJf4slfV6fXraOuwYyPJG5LQPlDWy1f+LQ8+7jCCmRr3RgmqP/9ch+2ZpEQ5sVooSTSbvABks/V27ibQzdwUDY16wRMdR2nem9TspoSRwMAjBvnNq6ytQKBgHYoGTrqeDXl1oRHK059kCbFVIdBuSFdPgLm+ieD7en/x+RQXb5UGNIqN6N3yctjUaA5YkUAcjhxjfx6c3emzX6mFYxMIzhqzrLVXKnW/m5a7kn3FE5JJE7ByQfBEkgGKsgqMjQwUs7fQ5sE+jjrF14AepzwSZNpLACXzv5Bhw9fAoGAZd1JrwPQFmSdran+M0J8z3APqkXIVZHqMVk+RpOjOwsvQEjYN7hUBJsonFiTGLR7hIxwPryoqgfsgMr3vkmaj5S9gAkelNnckxtx0nRFahV2FyM3iosV2Kzv6hdIu7qx4CoCWvyPV+ZRA6i4vAUxdAuGZ4E/eUYCyPdzgRXWrYECgYBVTyVV/FGsHzJVZYVY1uURPHGCTvzE336aWITdkmHLoR3BtmpNJYTzXjplu6/TiBh5GoqQXSHLKXeNcMXAaJSYjPYc1Bk/LdsrXTFABw/a2Vj4vmFZbaMnM7LJ+potml99E9/fOKmRQeifhpI4Z9boX5FJkMj4qe18u9NF4eqeWg==",

		//异步通知地址
		'notify_url' => "https://cs.l0dt.cn/lib/alipay/notify_url.php",

		//同步跳转
		'return_url' => "https://cs.l0dt.cn/lib/alipay/return_url.php",

		//编码格式
		'charset' => "UTF-8",

		//签名方式
		'sign_type'=>"RSA2",

		//支付宝网关
		'gatewayUrl' => "https://openapi.alipay.com/gateway.do",

		//支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
		'alipay_public_key' => "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAloQ0XLYSSGL1vJbbCgHOOt/d+h2LmPZe+hnyYKhYYzqPTvqdsiH5uRkLJv8LNQ6giPk4aHHfRVsVKtaPXXgjMzz8bKPIrB8Hq15NsNAuoHg8EGK8VzYl01QT9z1IE2i8crIc/0xlwsLb61T/lCsRoPldBeix6if5nWsQbmW2pY5JYqUm0uKDpMoeB/Wg7hCCnnVutBYECXsVryAw8plNiCX6i4yUEkJKdK4D2/0lfgJyg5LGwXCeSzci7nk3OBRLqCLKJNLD0s76bu1zo/d+0kYBDAAiRYO+K0tdpq6S/kPIsnnIE5Ajm91UngAAGugJCYWpZxRvcq27Kv2a20rdHwIDAQAB",
);
