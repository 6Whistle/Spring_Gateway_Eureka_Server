package site.toeicdoit.user.service;

import site.toeicdoit.user.domain.dto.*;
import site.toeicdoit.user.domain.model.CalendarModel;
import site.toeicdoit.user.domain.model.UserModel;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.domain.vo.Role;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface UserService extends CommandService<UserDto>, QueryService<UserDto> {

    default UserModel dtoToEntity(UserDto dto){
        return UserModel.builder()
                .email(dto.getEmail())
                .password(dto.getPassword())
                .profile(dto.getProfile())
                .name(dto.getName())
                .phone(dto.getPhone())
                .toeicLevel(dto.getToeicLevel())
                .registration(dto.getRegistration())
                .oauthId(dto.getOauthId())
                .build();
    }

    default UserDto entityToDto(UserModel userModel){
        return UserDto.builder()
                .id(userModel.getId())
                .email(userModel.getEmail())
                .profile(userModel.getProfile())
                .name(userModel.getName())
                .phone(userModel.getPhone())
                .toeicLevel(userModel.getToeicLevel())
                .registration(userModel.getRegistration())
                .roles(userModel.getRoleIds().stream().map(i -> Role.getRole(i.getRole())).toList())
                .oauthId(userModel.getOauthId())
                .createdAt(userModel.getCreatedAt())
                .updatedAt(userModel.getUpdatedAt())
                .build();
    }

    LoginResultDto oauthJoinOrLogin(OAuth2UserDto dto, String registration);
    LoginResultDto login(UserDto dto);
    Boolean existByEmail(String email);
    UserDto findByEmail(String email);
    Boolean modifyByPassword(String email, String oldPassword, String newPassword);
    UserDto modifyByNameAndPhone(UserDto dto);
    List<UserNameProfileDto> findByNameAndProfile(Map<String, List<Long>> ids);
    UserDto modifyByKeyword(Long id, String keyword, String info);
}
