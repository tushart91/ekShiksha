/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.bean;

/**
 *
 * @author Rajanikant
 */
import java.io.Serializable;

public class LanguageBean  implements Serializable{

        private int languageId;
        private String languageName;
        private String description;
        public LanguageBean(){
            languageId = 0;
            languageName = null;
            description = null;
        }

        public LanguageBean(int languageId,String languageName,String description){
            this.languageId = languageId;
            this.languageName = languageName;
            this.description = description;
        }

        //setter methods
        public void setLanguageId(int languageId){
            this.languageId = languageId;
        }
        public void setLanguageName(String languageName){
            this.languageName = languageName;
        }
        public void setDescription(String description){
            this.description = description;
        }
        
        //getter methods
        public int getLanguageId(){
            return languageId;
        }
        public String getLanguageName(){
            return languageName;
        }
        public String getDescription(){
            return description;
        }
}
