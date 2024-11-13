// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_user_model.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetIsarUserModelCollection on Isar {
  IsarCollection<String, IsarUserModel> get isarUserModels => this.collection();
}

const IsarUserModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'IsarUserModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'email',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'favorites',
        type: IsarType.object,
        target: 'IsarFavorites',
      ),
      IsarPropertySchema(
        name: 'comments',
        type: IsarType.stringList,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, IsarUserModel>(
    serialize: serializeIsarUserModel,
    deserialize: deserializeIsarUserModel,
    deserializeProperty: deserializeIsarUserModelProp,
  ),
  embeddedSchemas: [IsarFavoritesSchema, IsarCharacterModelSchema],
);

@isarProtected
int serializeIsarUserModel(IsarWriter writer, IsarUserModel object) {
  IsarCore.writeString(writer, 1, object.id);
  IsarCore.writeString(writer, 2, object.name);
  IsarCore.writeString(writer, 3, object.email);
  {
    final value = object.favorites;
    final objectWriter = IsarCore.beginObject(writer, 4);
    serializeIsarFavorites(objectWriter, value);
    IsarCore.endObject(writer, objectWriter);
  }
  {
    final list = object.comments;
    final listWriter = IsarCore.beginList(writer, 5, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeString(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  return Isar.fastHash(object.id);
}

@isarProtected
IsarUserModel deserializeIsarUserModel(IsarReader reader) {
  final String _id;
  _id = IsarCore.readString(reader, 1) ?? '';
  final String _name;
  _name = IsarCore.readString(reader, 2) ?? '';
  final String _email;
  _email = IsarCore.readString(reader, 3) ?? '';
  final IsarFavorites _favorites;
  {
    final objectReader = IsarCore.readObject(reader, 4);
    if (objectReader.isNull) {
      _favorites = IsarFavorites(
        liked: const <IsarCharacterModel>[],
        ids: const <String>[],
      );
    } else {
      final embedded = deserializeIsarFavorites(objectReader);
      IsarCore.freeReader(objectReader);
      _favorites = embedded;
    }
  }
  final List<String> _comments;
  {
    final length = IsarCore.readList(reader, 5, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _comments = const <String>[];
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _comments = list;
      }
    }
  }
  final object = IsarUserModel(
    id: _id,
    name: _name,
    email: _email,
    favorites: _favorites,
    comments: _comments,
  );
  return object;
}

@isarProtected
dynamic deserializeIsarUserModelProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      {
        final objectReader = IsarCore.readObject(reader, 4);
        if (objectReader.isNull) {
          return IsarFavorites(
            liked: const <IsarCharacterModel>[],
            ids: const <String>[],
          );
        } else {
          final embedded = deserializeIsarFavorites(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 5:
      {
        final length = IsarCore.readList(reader, 5, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <String>[];
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _IsarUserModelUpdate {
  bool call({
    required String id,
    String? name,
    String? email,
  });
}

class _IsarUserModelUpdateImpl implements _IsarUserModelUpdate {
  const _IsarUserModelUpdateImpl(this.collection);

  final IsarCollection<String, IsarUserModel> collection;

  @override
  bool call({
    required String id,
    Object? name = ignore,
    Object? email = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (name != ignore) 2: name as String?,
          if (email != ignore) 3: email as String?,
        }) >
        0;
  }
}

sealed class _IsarUserModelUpdateAll {
  int call({
    required List<String> id,
    String? name,
    String? email,
  });
}

class _IsarUserModelUpdateAllImpl implements _IsarUserModelUpdateAll {
  const _IsarUserModelUpdateAllImpl(this.collection);

  final IsarCollection<String, IsarUserModel> collection;

  @override
  int call({
    required List<String> id,
    Object? name = ignore,
    Object? email = ignore,
  }) {
    return collection.updateProperties(id, {
      if (name != ignore) 2: name as String?,
      if (email != ignore) 3: email as String?,
    });
  }
}

extension IsarUserModelUpdate on IsarCollection<String, IsarUserModel> {
  _IsarUserModelUpdate get update => _IsarUserModelUpdateImpl(this);

  _IsarUserModelUpdateAll get updateAll => _IsarUserModelUpdateAllImpl(this);
}

sealed class _IsarUserModelQueryUpdate {
  int call({
    String? name,
    String? email,
  });
}

class _IsarUserModelQueryUpdateImpl implements _IsarUserModelQueryUpdate {
  const _IsarUserModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<IsarUserModel> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? email = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 2: name as String?,
      if (email != ignore) 3: email as String?,
    });
  }
}

extension IsarUserModelQueryUpdate on IsarQuery<IsarUserModel> {
  _IsarUserModelQueryUpdate get updateFirst =>
      _IsarUserModelQueryUpdateImpl(this, limit: 1);

  _IsarUserModelQueryUpdate get updateAll =>
      _IsarUserModelQueryUpdateImpl(this);
}

class _IsarUserModelQueryBuilderUpdateImpl
    implements _IsarUserModelQueryUpdate {
  const _IsarUserModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<IsarUserModel, IsarUserModel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? email = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 2: name as String?,
        if (email != ignore) 3: email as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension IsarUserModelQueryBuilderUpdate
    on QueryBuilder<IsarUserModel, IsarUserModel, QOperations> {
  _IsarUserModelQueryUpdate get updateFirst =>
      _IsarUserModelQueryBuilderUpdateImpl(this, limit: 1);

  _IsarUserModelQueryUpdate get updateAll =>
      _IsarUserModelQueryBuilderUpdateImpl(this);
}

extension IsarUserModelQueryFilter
    on QueryBuilder<IsarUserModel, IsarUserModel, QFilterCondition> {
  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsIsEmpty() {
    return not().commentsIsNotEmpty();
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition>
      commentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 5, value: null),
      );
    });
  }
}

extension IsarUserModelQueryObject
    on QueryBuilder<IsarUserModel, IsarUserModel, QFilterCondition> {
  QueryBuilder<IsarUserModel, IsarUserModel, QAfterFilterCondition> favorites(
      FilterQuery<IsarFavorites> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 4);
    });
  }
}

extension IsarUserModelQuerySortBy
    on QueryBuilder<IsarUserModel, IsarUserModel, QSortBy> {
  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> sortByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> sortByEmailDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension IsarUserModelQuerySortThenBy
    on QueryBuilder<IsarUserModel, IsarUserModel, QSortThenBy> {
  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> thenByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterSortBy> thenByEmailDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension IsarUserModelQueryWhereDistinct
    on QueryBuilder<IsarUserModel, IsarUserModel, QDistinct> {
  QueryBuilder<IsarUserModel, IsarUserModel, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserModel, IsarUserModel, QAfterDistinct>
      distinctByComments() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension IsarUserModelQueryProperty1
    on QueryBuilder<IsarUserModel, IsarUserModel, QProperty> {
  QueryBuilder<IsarUserModel, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarUserModel, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarUserModel, String, QAfterProperty> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarUserModel, IsarFavorites, QAfterProperty>
      favoritesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarUserModel, List<String>, QAfterProperty> commentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension IsarUserModelQueryProperty2<R>
    on QueryBuilder<IsarUserModel, R, QAfterProperty> {
  QueryBuilder<IsarUserModel, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarUserModel, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarUserModel, (R, String), QAfterProperty> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarUserModel, (R, IsarFavorites), QAfterProperty>
      favoritesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarUserModel, (R, List<String>), QAfterProperty>
      commentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension IsarUserModelQueryProperty3<R1, R2>
    on QueryBuilder<IsarUserModel, (R1, R2), QAfterProperty> {
  QueryBuilder<IsarUserModel, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarUserModel, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarUserModel, (R1, R2, String), QOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarUserModel, (R1, R2, IsarFavorites), QOperations>
      favoritesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarUserModel, (R1, R2, List<String>), QOperations>
      commentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const IsarFavoritesSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'IsarFavorites',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'liked',
        type: IsarType.objectList,
        target: 'IsarCharacterModel',
      ),
      IsarPropertySchema(
        name: 'ids',
        type: IsarType.stringList,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, IsarFavorites>(
    serialize: serializeIsarFavorites,
    deserialize: deserializeIsarFavorites,
  ),
);

@isarProtected
int serializeIsarFavorites(IsarWriter writer, IsarFavorites object) {
  {
    final list = object.liked;
    final listWriter = IsarCore.beginList(writer, 1, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeIsarCharacterModel(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  {
    final list = object.ids;
    final listWriter = IsarCore.beginList(writer, 2, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeString(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  return 0;
}

@isarProtected
IsarFavorites deserializeIsarFavorites(IsarReader reader) {
  final List<IsarCharacterModel> _liked;
  {
    final length = IsarCore.readList(reader, 1, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _liked = const <IsarCharacterModel>[];
      } else {
        final list = List<IsarCharacterModel>.filled(
            length,
            IsarCharacterModel(
              id: '',
              birthYear: null,
              eyeColor: null,
              gender: null,
              hairColor: null,
              name: '',
              skinColor: null,
              url: '',
            ),
            growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = IsarCharacterModel(
                id: '',
                birthYear: null,
                eyeColor: null,
                gender: null,
                hairColor: null,
                name: '',
                skinColor: null,
                url: '',
              );
            } else {
              final embedded = deserializeIsarCharacterModel(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        _liked = list;
      }
    }
  }
  final List<String> _ids;
  {
    final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _ids = const <String>[];
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _ids = list;
      }
    }
  }
  final object = IsarFavorites(
    liked: _liked,
    ids: _ids,
  );
  return object;
}

extension IsarFavoritesQueryFilter
    on QueryBuilder<IsarFavorites, IsarFavorites, QFilterCondition> {
  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      likedIsEmpty() {
    return not().likedIsNotEmpty();
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      likedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 1, value: null),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsIsEmpty() {
    return not().idsIsNotEmpty();
  }

  QueryBuilder<IsarFavorites, IsarFavorites, QAfterFilterCondition>
      idsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 2, value: null),
      );
    });
  }
}

extension IsarFavoritesQueryObject
    on QueryBuilder<IsarFavorites, IsarFavorites, QFilterCondition> {}
