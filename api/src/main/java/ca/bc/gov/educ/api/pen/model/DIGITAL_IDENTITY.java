package ca.bc.gov.educ.api.pen.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import java.util.Date;

/**
 * Digital Identity DAO object
 *
 * @author John Cox
 */

@Data
public class DIGITAL_IDENTITY {
    @JsonProperty("digital_identity_id")
    Integer id;
    @JsonProperty("student_id")
    Integer studentId;
    @JsonProperty("identity_type_code")
    String identityTypeCode;
    @JsonProperty("identity_value")
    String identityValue;
    @JsonProperty("last_access_time")
    String lastAccessTime;
    @JsonProperty("last_access_channel_code")
    String lastAccessChannelCode;
    @JsonProperty("create_user")
    String createUser;
    @JsonProperty("create_date")
    Date createDate;
    @JsonProperty("update_user")
    String updateUser;
    @JsonProperty("update_date")
    Date updateDate;
}
