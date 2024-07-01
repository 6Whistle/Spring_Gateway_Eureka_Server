package site.toeicdoit.user.service;


import org.springframework.security.core.userdetails.UserDetailsService;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.model.jpa.UserModel;

public interface UserService extends CommandService<UserDto>, QueryService<UserDto>, UserDetailsService {

    default UserModel dtoToEntity(UserDto dto){
        return UserModel.builder()
                .email(dto.getEmail())
                .password(dto.getPassword())
                .name(dto.getName())
                .phone(dto.getPhone())
                .build();
    }

    default UserDto entityToDto(UserModel userModel){
        return UserDto.builder()
                .id(userModel.getId())
                .email(userModel.getEmail())
                .password(userModel.getPassword())
                .build();
    }

}
