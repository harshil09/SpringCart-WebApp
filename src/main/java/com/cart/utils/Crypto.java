package com.cart.utils;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Base64;
import javax.crypto.Cipher;

/**
 *
 * @author Raju-PC
 */
public class Crypto {

    public static String decrypt(String req_data) {
        String resp = null;
        try {
            String pk = GlobalConfig.decKey;
            if (pk != null && !"".equals(pk)) {
                byte[] a = Base64.getDecoder().decode(pk);
                PKCS8EncodedKeySpec kS = new PKCS8EncodedKeySpec(a);
                KeyFactory kf = KeyFactory.getInstance("RSA");
                PrivateKey privKey = kf.generatePrivate(kS);
                byte[] bytes = Base64.getDecoder().decode(req_data);

                Cipher decriptCipher = Cipher.getInstance("RSA");
                decriptCipher.init(Cipher.DECRYPT_MODE, privKey);
                resp = new String(decriptCipher.doFinal(bytes));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
}
