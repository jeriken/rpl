// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'database/objectbox.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 1255128063226635320),
      name: 'BoxStore',
      lastPropertyId: const IdUid(2, 1526046455433986730),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2856558624026079203),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1526046455433986730),
            name: 'data',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 1255128063226635320),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    BoxStore: EntityDefinition<BoxStore>(
        model: _entities[0],
        toOneRelations: (BoxStore object) => [],
        toManyRelations: (BoxStore object) => {},
        getId: (BoxStore object) => object.id,
        setId: (BoxStore object, int id) {
          object.id = id;
        },
        objectToFB: (BoxStore object, fb.Builder fbb) {
          final dataOffset = fbb.writeString(object.data);
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, dataOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = BoxStore(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              data:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [BoxStore] entity fields to define ObjectBox queries.
class BoxStore_ {
  /// see [BoxStore.id]
  static final id = QueryIntegerProperty<BoxStore>(_entities[0].properties[0]);

  /// see [BoxStore.data]
  static final data = QueryStringProperty<BoxStore>(_entities[0].properties[1]);
}
