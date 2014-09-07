/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.bean;

/**
 *
 * @author rkjangir
 */
import java.io.Serializable;

public class Topic implements Serializable {

        private int topicId;
        private String topicName;
        private int langId;
        private int parentId;
        private int type;
        
        public void setTopicId(int topicId) {
            this.topicId = topicId;
        }

        public void setTopicName(String topicName) {
            this.topicName = topicName;
        }

        public void setLangId(int langId) {
            this.langId = langId;
        }
        
        public void setParentId(int parentId) {
            this.parentId = parentId;
        }
        public void setType(int type) {
            this.type = type;
        }

        public int getTopicId() {
            return topicId;
        }

        public String getTopicName() {
            return topicName;
        }

        
        public int getLangId() {
            return langId;
        }

        public int getParentId() {
            return parentId;
        }

        public int getType() {
            return type;
        }
}
