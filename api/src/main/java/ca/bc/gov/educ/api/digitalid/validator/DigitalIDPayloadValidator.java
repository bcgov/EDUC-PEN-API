package ca.bc.gov.educ.api.digitalid.validator;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.FieldError;

import ca.bc.gov.educ.api.digitalid.service.DigitalIDService;
import ca.bc.gov.educ.api.digitalid.struct.AccessChannelCode;
import ca.bc.gov.educ.api.digitalid.struct.DigitalID;
import ca.bc.gov.educ.api.digitalid.struct.IdentityTypeCode;
import lombok.AccessLevel;
import lombok.Getter;

@Component
public class DigitalIDPayloadValidator {

  @Getter(AccessLevel.PRIVATE)
  private final DigitalIDService digitalIDService;

  @Autowired
  public DigitalIDPayloadValidator(final DigitalIDService digitalIDService) {
    this.digitalIDService = digitalIDService;
  }

  public List<FieldError> validatePayload(final DigitalID digitalID) {
    final List<FieldError> apiValidationErrors = new ArrayList<>();
    validateLastAccessChannelCode(digitalID, apiValidationErrors);
    return apiValidationErrors;
  }
  
  protected void validateIdentityTypeCode(DigitalID digitalID, List<FieldError> apiValidationErrors) {
    final IdentityTypeCode identityTypeCode = digitalIDService.findIdentityTypeCode(digitalID.getIdentityTypeCode());
    if (identityTypeCode == null) {
      apiValidationErrors.add(createFieldError(digitalID.getLastAccessChannelCode(), "Invalid Identity Type Code."));
    } else if (identityTypeCode.getEffectiveDate() != null && new Date().before(identityTypeCode.getEffectiveDate())) {
      apiValidationErrors.add(createFieldError(digitalID.getLastAccessChannelCode(), "Identity Type Code provided is not yet effective."));
    } else if (identityTypeCode.getExpiryDate() != null && new Date().after(identityTypeCode.getExpiryDate())) {
      apiValidationErrors.add(createFieldError(digitalID.getLastAccessChannelCode(), "Identity Type Code provided has expired."));
    }
  }

  protected void validateLastAccessChannelCode(DigitalID digitalID, List<FieldError> apiValidationErrors) {
    final AccessChannelCode accessChannelCode = digitalIDService.findAccessChannelCode(digitalID.getLastAccessChannelCode());
    if (accessChannelCode == null) {
      apiValidationErrors.add(createFieldError(digitalID.getLastAccessChannelCode(), "Invalid Last Access Channel Code."));
    } else if (accessChannelCode.getEffectiveDate() != null && new Date().before(accessChannelCode.getEffectiveDate())) {
      apiValidationErrors.add(createFieldError(digitalID.getLastAccessChannelCode(), "Last Access Channel Code provided is not yet effective."));
    } else if (accessChannelCode.getExpiryDate() != null && new Date().after(accessChannelCode.getExpiryDate())) {
      apiValidationErrors.add(createFieldError(digitalID.getLastAccessChannelCode(), "Last Access Channel Code provided has expired."));
    }
  }

  private FieldError createFieldError(Object rejectedValue, String message) {
    return new FieldError("DigitalID", "lastAccessChannelCode", rejectedValue, false, null, null, message);
  }

}
