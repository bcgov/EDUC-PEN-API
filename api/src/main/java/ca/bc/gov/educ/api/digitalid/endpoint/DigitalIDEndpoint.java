package ca.bc.gov.educ.api.digitalid.endpoint;

import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ca.bc.gov.educ.api.digitalid.struct.AccessChannelCode;
import ca.bc.gov.educ.api.digitalid.struct.DigitalID;
import ca.bc.gov.educ.api.digitalid.struct.IdentityTypeCode;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;

@RequestMapping("/")
@OpenAPIDefinition(info = @Info(title = "API for Digital ID.", description = "This CRUD API is for Digital ID related to a student in BC.", version = "1"), security = {@SecurityRequirement(name = "OAUTH2", scopes = {"READ_DIGITALID", "WRITE_DIGITALID"})})
public interface DigitalIDEndpoint {

  @GetMapping
  @PreAuthorize("#oauth2.hasScope('READ_DIGITALID')")
  @ApiResponses(value = {@ApiResponse(responseCode = "200", description = "OK"), @ApiResponse(responseCode = "404", description = "NOT FOUND.")})
  DigitalID searchDigitalID(@RequestParam("identitytype") String typeCode, @RequestParam("identityvalue") String typeValue);

  @GetMapping("/{id}")
  @PreAuthorize("#oauth2.hasScope('READ_DIGITALID')")
  @ApiResponses(value = {@ApiResponse(responseCode = "200", description = "OK"), @ApiResponse(responseCode = "404", description = "NOT FOUND.")})
  DigitalID retrieveDigitalID(@PathVariable String id);

  @PostMapping
  @PreAuthorize("#oauth2.hasScope('WRITE_DIGITALID')")
  @ApiResponses(value = {@ApiResponse(responseCode = "200", description = "OK"), @ApiResponse(responseCode = "201", description = "CREATED.")})
  DigitalID createDigitalID(@Validated @RequestBody DigitalID digitalID);

  @PutMapping
  @PreAuthorize("#oauth2.hasScope('WRITE_DIGITALID')")
  @ApiResponses(value = {@ApiResponse(responseCode = "200", description = "OK"), @ApiResponse(responseCode = "404", description = "NOT FOUND.")})
  DigitalID updateDigitalID(@Validated @RequestBody DigitalID digitalID);

  @GetMapping("/accessChannelCodes")
  @PreAuthorize("#oauth2.hasScope('READ_DIGITALID_CODETABLE')")
  @ApiResponses(value = {@ApiResponse(responseCode = "200", description = "OK")})
  List<AccessChannelCode> retrieveAccessChannelCodes();
  
  @GetMapping("/identityTypeCodes")
  @PreAuthorize("#oauth2.hasScope('READ_DIGITALID_CODETABLE')")
  @ApiResponses(value = {@ApiResponse(responseCode = "200", description = "OK")})
  List<IdentityTypeCode> retrieveIdentityTypeCodes();
  
  @GetMapping("/health")
  @ApiResponses(value = {@ApiResponse(responseCode = "200", description = "OK"), @ApiResponse(responseCode = "500", description = "INTERNAL SERVER ERROR.")})
  String health();

}
